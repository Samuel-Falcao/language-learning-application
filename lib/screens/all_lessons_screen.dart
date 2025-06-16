import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/score_model.dart';
import '../services/progress_service.dart';

class AllLessonsScreen extends StatelessWidget {
  const AllLessonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Todas as Lições')),
      body: ValueListenableBuilder<Map<String, ScoreModel>>(
        valueListenable: ProgressService.instance.scoresNotifier,
        builder: (context, scores, _) {
          if (scores.isEmpty) {
            return const Center(
              child: Text(
                'Nenhuma lição encontrada.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
            );
          }

          final scoresList = scores.values.toList();
          scoresList.sort((a, b) => b.date.compareTo(a.date));

          return ListView.separated(
            padding: const EdgeInsets.all(16),
            itemCount: scoresList.length,
            separatorBuilder: (_, __) => const SizedBox(height: 8),
            itemBuilder: (context, index) {
              final scoreData = scoresList[index];
              final formattedDate =
                  DateFormat('dd/MM/yy \'às\' HH:mm').format(scoreData.date);
              return Card(
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: scoreData.activityType == 'quiz'
                        ? theme.primaryColor
                        : Colors.green[600],
                    child: Icon(
                      scoreData.activityType == 'quiz'
                          ? Icons.quiz_outlined
                          : Icons.article_outlined,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  title: Text(
                    '${scoreData.activityType == 'quiz' ? 'Quiz' : 'Frases'}: ${scoreData.lessonTitle}',
                    style: theme.textTheme.titleMedium,
                  ),
                  subtitle: Text(
                    'Pontuação: ${scoreData.score} de ${scoreData.totalQuestions}\nRealizado em: $formattedDate',
                    style: theme.textTheme.bodyMedium,
                  ),
                  isThreeLine: true,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
