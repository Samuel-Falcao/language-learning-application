import 'package:flutter/material.dart';
import 'package:diacritic/diacritic.dart'; // Para comparar strings sem acentos
import '../models/language_model.dart';
import '../models/lesson_model.dart';
import '../models/phrase_model.dart';
import '../services/navigation_service.dart';
import '../services/progress_service.dart';
import '../utils/app_routes.dart';
import '../widgets/nav_button.dart';

class CompletePhraseScreen extends StatefulWidget {
  const CompletePhraseScreen({super.key});

  @override
  CompletePhraseScreenState createState() => CompletePhraseScreenState();
}

class CompletePhraseScreenState extends State<CompletePhraseScreen> {
  late LessonModel _lesson;
  late LanguageModel _language;
  late List<PhraseModel> _originalPhrases;
  late List<PhraseModel> _phrases;
  final List<PhraseModel> _incorrectlyAnsweredPhrases = [];
  bool _isReviewMode = false;

  int _currentPhraseIndex = 0;
  int _score = 0;
  bool _answered = false;
  bool? _isCorrect;
  bool _isLoading = true;
  bool _isInitialized = false;
  bool _isCompleted = false;

  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  // Cor verde usada nos botões e appbar
  static const Color primaryGreen = Color(0xFF4CAF50);

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isInitialized) {
      _initializeActivity();
    }
  }

  void _initializeActivity() {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    _lesson = arguments['lesson'] as LessonModel;
    _language = arguments['language'] as LanguageModel;
    final List<String>? wrongQuestionIds =
        arguments['wrongQuestionIds'] as List<String>?;

    _originalPhrases = List.from(_lesson.phraseActivities);

    if (wrongQuestionIds != null && wrongQuestionIds.isNotEmpty) {
      _isReviewMode = true;
      _phrases = _originalPhrases
          .where((p) => wrongQuestionIds.contains(p.id))
          .toList();
    } else {
      _isReviewMode = false;
      _phrases = List.from(_originalPhrases);
    }

    setState(() {
      _isInitialized = true;
    });

    if (!_isReviewMode) {
      _loadInitialProgress();
    } else {
      setState(() => _isLoading = false);
    }
  }

  @override
  void dispose() {
    if (!_isCompleted && _phrases.isNotEmpty && !_isReviewMode) {
      ProgressService.instance.savePhraseProgress(
        lessonId: _lesson.id,
        phraseIndex: _currentPhraseIndex,
        score: _score,
      );
    }
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  Future<void> _loadInitialProgress() async {
    final savedProgress =
        await ProgressService.instance.loadPhraseProgress(_lesson.id);
    if (mounted && savedProgress != null) {
      final shouldContinue = await showDialog<bool>(
        context: context,
        barrierDismissible: false,
        builder: (ctx) => AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: const Text('Continuar Progresso?'),
          content: Text(
              'Encontrámos um progresso salvo na frase ${savedProgress['index']! + 1}. Deseja continuar?'),
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

      if (shouldContinue ?? true) {
        setState(() {
          _currentPhraseIndex = savedProgress['index']!;
          _score = savedProgress['score']!;
        });
      } else {
        await ProgressService.instance.clearPhraseProgress(_lesson.id);
      }
    }
    if (mounted) {
      setState(() => _isLoading = false);
    }
  }

  void _checkAnswer() {
    if (_answered) return;
    final userAnswer = _textController.text.trim();
    final correctAnswer = _phrases[_currentPhraseIndex].correctAnswer.trim();

    final isCorrect = removeDiacritics(userAnswer.toLowerCase()) ==
        removeDiacritics(correctAnswer.toLowerCase());

    setState(() {
      _answered = true;
      _isCorrect = isCorrect;
      if (isCorrect) {
        _score++;
      } else {
        if (!_isReviewMode) {
          _incorrectlyAnsweredPhrases.add(_phrases[_currentPhraseIndex]);
        }
      }
    });
    _focusNode.unfocus();
  }

  void _handleNextStep() {
    if (_currentPhraseIndex < _phrases.length - 1) {
      setState(() {
        _currentPhraseIndex++;
        _answered = false;
        _isCorrect = null;
        _textController.clear();
      });
      _focusNode.requestFocus();
    } else {
      _showResultDialog();
    }
  }

  void _showResultDialog() {
    _isCompleted = true;

    if (!_isReviewMode) {
      ProgressService.instance.clearPhraseProgress(_lesson.id);
      final List<String> incorrectIds =
          _incorrectlyAnsweredPhrases.map((p) => p.id).toList();

      ProgressService.instance.completeActivity(
        languageId: _language.id,
        lesson: _lesson,
        activityType: 'frases',
        score: _score,
        totalQuestions: _originalPhrases.length,
        wrongQuestionIds: incorrectIds,
      );
    }

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(
          _isReviewMode ? 'Revisão Finalizada!' : 'Lição Finalizada!',
          textAlign: TextAlign.center,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Sua pontuação: $_score de ${_phrases.length}',
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
                backgroundColor: Colors.teal,
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
                    color: Theme.of(context).colorScheme.outline.withOpacity(0.5)),
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

  @override
  Widget build(BuildContext context) {
    if (!_isInitialized || _isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("A carregar..."),
          backgroundColor: Colors.teal,
          iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    if (_phrases.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: Text(_lesson.title),
          backgroundColor: Colors.teal,
          iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Esta lição não possui frases ou nenhuma frase para rever.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      );
    }

    final double progress = (_currentPhraseIndex + 1) / _phrases.length;
    final PhraseModel currentPhrase = _phrases[_currentPhraseIndex];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        title: Text(
          _isReviewMode ? "A rever... - ${_lesson.title}" : _lesson.title,
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
                    'Frase ${_currentPhraseIndex + 1} de ${_phrases.length}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: progress,
                    minHeight: 12,
                    borderRadius: BorderRadius.circular(6),
                    color: Colors.teal,
                    backgroundColor: Colors.teal.withOpacity(0.3),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Text(
              currentPhrase.phraseTemplate,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _textController,
              focusNode: _focusNode,
              autofocus: true,
              readOnly: _answered,
              decoration: InputDecoration(
                hintText: 'Digite a tradução aqui',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onSubmitted: (_) => _checkAnswer(),
            ),
            const SizedBox(height: 20),
            if (!_answered)
              NavButton(
                title: 'Verificar Resposta',
                onPressed: _checkAnswer,
                color: Colors.teal,
              ),
            if (_answered)
              Column(
                children: [
                  Text(
                    _isCorrect! ? 'Correto!' : 'Incorreto!',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: _isCorrect! ? Colors.green : Colors.red,
                    ),
                  ),
                  if (!_isCorrect!)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'A resposta certa era: "${currentPhrase.correctAnswer}"',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: Theme.of(context).colorScheme.onSurface),
                      ),
                    ),
                  const SizedBox(height: 20),
                  NavButton(
                    title: _currentPhraseIndex < _phrases.length - 1
                        ? 'CONTINUAR'
                        : 'VER RESULTADO',
                    onPressed: _handleNextStep,
                    color: Colors.teal,
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
