import 'package:flutter/material.dart';
import '../models/language_model.dart';
import '../models/lesson_model.dart';
import '../models/score_model.dart';
import '../services/data_service.dart';
import '../services/progress_service.dart';
import '../utils/app_routes.dart';

class LessonListScreen extends StatelessWidget {
  const LessonListScreen({super.key});

  void _showLessonOptions(BuildContext context, LanguageModel language,
      LessonModel lesson, String activityType, ScoreModel scoreData) {
        
    final bool canReview = scoreData.wrongQuestionIds.isNotEmpty;

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: Text(lesson.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text("O que você gostaria de fazer?",
                textAlign: TextAlign.center),
            const SizedBox(height: 24),
            
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: const Text("Refazer Lição"),
              onPressed: () {
                Navigator.of(ctx).pop();
                _navigateToActivity(context, language, lesson, activityType);
              },
            ),
            const SizedBox(height: 12),

            if (canReview)
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black,
                  ),
                  child: const Text("Revisar Erradas"),
                  onPressed: () {
                    Navigator.of(ctx).pop();
                    _navigateToActivity(
                      context,
                      language,
                      lesson,
                      activityType,
                      wrongQuestionIds: scoreData.wrongQuestionIds,
                    );
                  },
                ),
              ),
            
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: const Text("Voltar"),
              onPressed: () => Navigator.of(ctx).pop(),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToActivity(BuildContext context, LanguageModel language,
      LessonModel lesson, String activityType,
      {List<String>? wrongQuestionIds}) {
        
    final route =
        activityType == 'quiz' ? AppRoutes.quiz : AppRoutes.completePhrase;
        
    Navigator.of(context).pushNamed(
      route,
      arguments: {
        'lesson': lesson,
        'language': language,
        'wrongQuestionIds': wrongQuestionIds,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final LanguageModel language = arguments['language'];
    final String activityType = arguments['activityType'];

    final DataService dataService = DataService();
    final List<LessonModel> lessons =
        dataService.getLessonsForLanguage(language.id);

    return Scaffold(
      appBar: AppBar(
        title: Text(
            '${language.name} - ${activityType == 'quiz' ? 'Quiz' : 'Frases'}'),
      ),
      body: ValueListenableBuilder<Map<String, ScoreModel>>(
        valueListenable: ProgressService.instance.scoresNotifier,
        builder: (context, scores, _) {
          return ListView.builder(
            padding: const EdgeInsets.all(16.0),
            itemCount: lessons.length,
            itemBuilder: (context, index) {
              final lesson = lessons[index];
              final uniqueActivityId =
                  '${language.id}_${lesson.id}_$activityType';

              final ScoreModel? scoreData = scores[uniqueActivityId];
              final bool isCompleted = scoreData != null;

              // --- LÓGICA DE BLOQUEIO CORRIGIDA ---
              bool isLocked = false;
              if (index > 0) {
                final previousLesson = lessons[index - 1];
                // Verifica a conclusão apenas para o MESMO tipo de atividade da lição anterior.
                final prevActivityId = '${language.id}_${previousLesson.id}_$activityType';
                isLocked = !scores.containsKey(prevActivityId);
              }

              return Opacity(
                opacity: isLocked ? 0.5 : 1.0,
                child: Card(
                  elevation: isLocked ? 0 : 2,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: isCompleted
                          ? Colors.green
                          : (isLocked
                              ? Colors.grey.shade300
                              : Theme.of(context).primaryColor),
                      foregroundColor:
                          isLocked ? Colors.grey.shade600 : Colors.white,
                      child: isCompleted
                          ? const Icon(Icons.check, color: Colors.white)
                          : (isLocked 
                              ? const Icon(Icons.lock_outline, size: 20)
                              : Text(
                                  '${index + 1}',
                                  style:
                                      const TextStyle(fontWeight: FontWeight.bold),
                                )),
                    ),
                    title: Text(lesson.title),
                    subtitle: Text(
                      isCompleted
                          ? 'Progresso: ${scoreData.score}/${scoreData.totalQuestions}'
                          : lesson.description,
                    ),
                    trailing: isLocked
                        ? const Icon(Icons.lock, color: Colors.grey)
                        : const Icon(Icons.arrow_forward_ios),
                    onTap: isLocked
                        ? null
                        : () {
                            if (isCompleted) {
                              _showLessonOptions(context, language, lesson,
                                  activityType, scoreData);
                            } else {
                              _navigateToActivity(
                                  context, language, lesson, activityType);
                            }
                          },
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
