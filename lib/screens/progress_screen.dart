import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/score_model.dart';
import '../models/user_profile_model.dart';
import '../services/navigation_service.dart';
import '../services/progress_service.dart';
import '../widgets/custom_app_bar.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  void _showActivityChoiceDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          title: const Text('Escolha uma Atividade'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton.icon(
                icon: const Icon(Icons.quiz_outlined),
                label: const Text('Quiz'),
                onPressed: () {
                  Navigator.of(dialogContext).pop();
                  NavigationService.instance.changeTab(1);
                },
              ),
              const SizedBox(height: 12),
              ElevatedButton.icon(
                icon: const Icon(Icons.article_outlined),
                label: const Text('Complete a Frase'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  foregroundColor: Colors.black87,
                ),
                onPressed: () {
                  Navigator.of(dialogContext).pop();
                  NavigationService.instance.changeTab(2);
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('Cancelar'),
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildStreakIcon(BuildContext context, int streak) {
    if (streak == 0) {
      return const SizedBox.shrink();
    }

    IconData iconData = Icons.whatshot;
    Color iconColor;
    String tooltip = "Ofensiva de $streak dia(s)!";

    if (streak >= 365) {
      iconColor = Colors.deepPurple;
      tooltip = "Ofensiva de 1 ano ou mais! Lendário!";
    } else if (streak >= 180) {
      iconColor = Colors.red.shade700;
      tooltip = "Ofensiva de 6 meses! Incrível!";
    } else if (streak >= 30) {
      iconColor = Colors.red;
      tooltip = "Ofensiva de 30 dias! Você está pegando fogo!";
    } else {
      iconColor = Colors.orange.shade800;
    }

    return Tooltip(
      message: tooltip,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(iconData, color: iconColor, size: 30),
          const SizedBox(width: 4),
          Text(
            '$streak',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: iconColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeeklyChallengeCard(
      UserProfileModel profile, BuildContext context) {
    double progress = 0;
    if (profile.lastPeriodXP > 0) {
      progress = profile.periodXP / profile.lastPeriodXP;
    }

    bool challengeCompleted = profile.periodChallengeCompleted;
    bool hasRecord = profile.lastPeriodXP > 0;

    return Card(
      // ALTERAÇÃO: Margin zerada para remover espaço vertical extra do tema.
      margin: EdgeInsets.zero,
      elevation: 2,
      shadowColor: Colors.black.withOpacity(0.05),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Desafio de 3 Dias",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                if (challengeCompleted) ...[
                  const SizedBox(width: 8),
                  Icon(Icons.check_circle, color: Colors.green.shade600)
                ]
              ],
            ),
            const SizedBox(height: 8),
            Text(
              challengeCompleted
                  ? "Parabéns! Você bateu o recorde e ganhou 50 gemas!"
                  : hasRecord
                      ? "Bata seu recorde de ${profile.lastPeriodXP} XP e ganhe um bônus de 50 gemas!"
                      : "Defina seu primeiro recorde! O XP que você fizer agora será a meta do próximo desafio.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 20),
            LinearProgressIndicator(
              value: progress.clamp(0.0, 1.0),
              minHeight: 16,
              borderRadius: BorderRadius.circular(8),
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.amber.shade700),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Seu XP: ${profile.periodXP}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  hasRecord
                      ? "Recorde: ${profile.lastPeriodXP} XP"
                      : "Recorde: -",
                  style: TextStyle(color: Colors.grey.shade700),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLevelCard(UserProfileModel profile, BuildContext context) {
    double progressToNextLevel = 0;
    final xpNeededForThisLevel =
        profile.nextLevelBaseXp - profile.currentLevelBaseXp;
    if (xpNeededForThisLevel > 0) {
      progressToNextLevel = profile.currentLevelXp / xpNeededForThisLevel;
    }

    return Card(
      // ALTERAÇÃO: Margin zerada para remover espaço vertical extra do tema.
      margin: EdgeInsets.zero,
      elevation: 2,
      shadowColor: Colors.black.withOpacity(0.05),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Seu Nível Atual',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(color: Colors.grey[700])),
                      Text('Nível ${profile.level}: ${profile.levelName}',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis),
                    ],
                  ),
                ),
                _buildStreakIcon(context, profile.streak),
              ],
            ),
            const SizedBox(height: 20),
            LinearProgressIndicator(
              value: progressToNextLevel,
              minHeight: 12,
              borderRadius: BorderRadius.circular(10),
              backgroundColor: Colors.grey[200],
              valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).colorScheme.secondary),
            ),
            const SizedBox(height: 8),
            Text(
                '${profile.currentLevelXp} / $xpNeededForThisLevel XP para o próximo nível',
                style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: const CustomAppBar(title: 'Meu Progresso'),
      body: SafeArea(
        top: false,
        child: ListView(
          // ALTERAÇÃO: Padding vertical reduzido para compactar a lista.
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          children: [
            ValueListenableBuilder<UserProfileModel>(
              valueListenable: ProgressService.instance.userProfileNotifier,
              builder: (context, profile, _) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildLevelCard(profile, context),
                    // ALTERAÇÃO: Espaçamento entre os cards reduzido.
                    const SizedBox(height: 12),
                    _buildWeeklyChallengeCard(profile, context),
                    // ALTERAÇÃO: Espaçamento antes do botão reduzido.
                    const SizedBox(height: 20),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.play_arrow),
                      label: const Text('Continuar Aprendendo'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.primary,
                        foregroundColor: theme.colorScheme.onPrimary,
                        minimumSize: const Size(double.infinity, 60),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        elevation: 2,
                      ),
                      onPressed: () => _showActivityChoiceDialog(context),
                    )
                  ],
                );
              },
            ),
            // ALTERAÇÃO: Espaçamento antes da lista de atividades reduzido.
            const SizedBox(height: 20),
            Text("Atividades Recentes", style: theme.textTheme.titleLarge),
            const Divider(height: 20, thickness: 1),
            ValueListenableBuilder<Map<String, ScoreModel>>(
              valueListenable: ProgressService.instance.scoresNotifier,
              builder: (context, scores, child) {
                if (scores.isEmpty) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(32.0),
                      child: Text(
                        'Nenhuma atividade recente. Complete uma lição!',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  );
                }
                final scoresList = scores.values.toList();
                scoresList.sort((a, b) => b.date.compareTo(a.date));
                return Column(
                  children: scoresList.map((scoreData) {
                    final formattedDate = DateFormat('dd/MM/yy \'às\' HH:mm')
                        .format(scoreData.date);
                    return Card(
                      // ALTERAÇÃO: Margin zerada para os cards da lista também.
                      margin: const EdgeInsets.only(bottom: 8.0),
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
                            style: theme.textTheme.bodyMedium),
                        isThreeLine: true,
                      ),
                    );
                  }).toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
