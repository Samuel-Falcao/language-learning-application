import 'package:flutter/material.dart';
import '../models/language_model.dart';
import '../models/lesson_model.dart';
import '../models/quiz_question_model.dart';
import '../services/navigation_service.dart';
import '../services/progress_service.dart';
import '../utils/app_routes.dart';
import '../widgets/nav_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  QuizScreenState createState() => QuizScreenState();
}

class QuizScreenState extends State<QuizScreen> {
  late LessonModel _lesson;
  late LanguageModel _language;
  late List<QuizQuestionModel> _originalQuestions;
  late List<QuizQuestionModel> _questions;
  final List<QuizQuestionModel> _incorrectlyAnsweredQuestions = [];

  bool _isReviewMode = false;
  bool _isInitialized = false;
  bool _isLoading = true;
  bool _isCompleted = false;
  bool _answered = false;

  int _currentQuestionIndex = 0;
  int _score = 0;
  int? _selectedAnswerIndex;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isInitialized) _initializeQuiz();
  }

  void _initializeQuiz() {
    final modalRoute = ModalRoute.of(context);
    if (modalRoute == null || modalRoute.settings.arguments == null) return;

    final arguments = modalRoute.settings.arguments as Map<String, dynamic>;

    _lesson = arguments['lesson'] as LessonModel;
    _language = arguments['language'] as LanguageModel;
    final List<String>? wrongQuestionIds =
        arguments['wrongQuestionIds'] as List<String>?;

    _originalQuestions = List.from(_lesson.quizQuestions);

    if (wrongQuestionIds != null && wrongQuestionIds.isNotEmpty) {
      _isReviewMode = true;
      _questions = _originalQuestions
          .where((q) => wrongQuestionIds.contains(q.id))
          .toList();
      _isLoading = false;
    } else {
      _isReviewMode = false;
      _questions = List.from(_originalQuestions);
      _loadInitialProgress();
    }

    _isInitialized = true;
  }

  Future<void> _loadInitialProgress() async {
    final savedProgress =
        await ProgressService.instance.loadQuizProgress(_lesson.id);
    if (mounted && savedProgress != null) {
      final shouldContinue = await showDialog<bool>(
        context: context,
        barrierDismissible: false,
        builder: (ctx) => AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: const Text('Continuar Progresso?'),
          content: Text(
              'Encontrámos um progresso salvo na pergunta ${savedProgress['index']! + 1}. Deseja continuar?'),
          actions: [
            TextButton(
              child: const Text('Recomeçar'),
              onPressed: () => Navigator.of(ctx).pop(false),
            ),
            ElevatedButton(
              child: const Text('Continuar'),
              onPressed: () => Navigator.of(ctx).pop(true),
            ),
          ],
        ),
      );

      if (shouldContinue ?? false) {
        setState(() {
          _currentQuestionIndex = savedProgress['index']!;
          _score = savedProgress['score']!;
        });
      } else {
        await ProgressService.instance.clearQuizProgress(_lesson.id);
      }
    }

    if (mounted) {
      setState(() => _isLoading = false);
    }
  }

  @override
  void dispose() {
    if (!_isCompleted && _questions.isNotEmpty && !_isReviewMode) {
      ProgressService.instance.saveQuizProgress(
        lessonId: _lesson.id,
        questionIndex: _currentQuestionIndex,
        score: _score,
      );
    }
    super.dispose();
  }

  void _checkAnswer(int selectedIndex) {
    if (_answered) return;

    final isCorrect =
        selectedIndex == _questions[_currentQuestionIndex].correctAnswerIndex;

    setState(() {
      _answered = true;
      _selectedAnswerIndex = selectedIndex;
      if (isCorrect) {
        _score++;
      } else {
        if (!_isReviewMode) {
          _incorrectlyAnsweredQuestions.add(_questions[_currentQuestionIndex]);
        }
      }
    });
  }

  void _handleNextStep() {
    if (_currentQuestionIndex < _questions.length - 1) {
      setState(() {
        _currentQuestionIndex++;
        _answered = false;
        _selectedAnswerIndex = null;
      });
    } else {
      _showResultDialog();
    }
  }

  Future<void> _showResultDialog() async {
    _isCompleted = true;

    if (!_isReviewMode) {
      final List<String> incorrectIds =
          _incorrectlyAnsweredQuestions.map((q) => q.id).toList();

      await ProgressService.instance.completeActivity(
        languageId: _language.id,
        lesson: _lesson,
        activityType: 'quiz',
        score: _score,
        totalQuestions: _originalQuestions.length,
        wrongQuestionIds: incorrectIds,
      );
    }

    if (!mounted) return;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(
          _isReviewMode
              ? 'Revisão Finalizada!'
              : 'Lição "${_lesson.title}" Finalizada!',
          textAlign: TextAlign.center,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Sua pontuação: $_score de ${_questions.length}',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text('Ver Progresso'),
              onPressed: () {
                Navigator.of(ctx).popUntil(ModalRoute.withName(AppRoutes.main));
                NavigationService.instance.changeTab(0);
              },
            ),
            const SizedBox(height: 8),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                side: BorderSide(
                    color:
                        Theme.of(context).colorScheme.outline.withOpacity(0.5)),
              ),
              child: const Text('Sair'),
              onPressed: () {
                Navigator.of(ctx).pop();
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }

  Color _getButtonColor(int optionIndex) {
    final primaryGreen = Theme.of(context).colorScheme.primary;

    if (!_answered) {
      return primaryGreen.withOpacity(0.85);
    }
    if (optionIndex == _questions[_currentQuestionIndex].correctAnswerIndex) {
      return primaryGreen;
    }
    if (optionIndex == _selectedAnswerIndex) {
      return Colors.red;
    }
    return primaryGreen.withOpacity(0.85);
  }

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized || _isLoading) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          iconTheme: const IconThemeData(color: Colors.white),
          title: const Text(
            "A carregar...",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    if (_questions.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            _lesson.title,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Esta lição não possui um quiz ou nenhuma pergunta para rever.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      );
    }

    final double progress = (_currentQuestionIndex + 1) / _questions.length;
    final currentQuestion = _questions[_currentQuestionIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          _isReviewMode ? "A rever... - ${_lesson.title}" : _lesson.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                children: [
                  Text(
                    'Pergunta ${_currentQuestionIndex + 1} de ${_questions.length}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: progress,
                    minHeight: 12,
                    color: Theme.of(context).colorScheme.primary,
                    backgroundColor:
                        Theme.of(context).colorScheme.primary.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(6),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                currentQuestion.questionText,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const SizedBox(height: 30),
            ...currentQuestion.options.asMap().entries.map((entry) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 6.0),
                child: ElevatedButton(
                  onPressed: _answered ? null : () => _checkAnswer(entry.key),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _getButtonColor(entry.key),
                    foregroundColor: Colors.white,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  child: Text(entry.value),
                ),
              );
            }).toList(),
            const SizedBox(height: 40),
            if (_answered)
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    _selectedAnswerIndex ==
                            _questions[_currentQuestionIndex].correctAnswerIndex
                        ? 'Correto!'
                        : 'Incorreto. A resposta era: ${_questions[_currentQuestionIndex].options[_questions[_currentQuestionIndex].correctAnswerIndex]}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: _selectedAnswerIndex ==
                              _questions[_currentQuestionIndex]
                                  .correctAnswerIndex
                          ? Theme.of(context).colorScheme.primary
                          : Colors.red,
                    ),
                  ),
                  const SizedBox(height: 15),
                  NavButton(
                    title: _currentQuestionIndex < _questions.length - 1
                        ? 'CONTINUAR'
                        : 'VER RESULTADO',
                    onPressed: _handleNextStep,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
