import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/user_profile_model.dart';
import '../services/auth_service.dart';
import '../services/progress_service.dart';
import '../utils/app_routes.dart';
import '../widgets/avatar_display.dart';
import '../widgets/gemas_display_widget.dart';
import '../widgets/xp_boost_timer_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text("Sobre o Falaê"),
        content: const SingleChildScrollView(
          child: Text(
            "O Falaê é um protótipo de aplicativo para aprendizado de idiomas, desenvolvido como parte do curso de Desenvolvimento de Sistemas.\n\n"
            "Funcionalidades:\n"
            "- Lições interativas com Quizzes e atividades de completar frases.\n"
            "- Sistema de Níveis e XP.\n"
            "- Economia interna com Gemas e uma Loja de itens.\n"
            "- Bônus de XP e Desafios Semanais para manter o engajamento.",
          ),
        ),
        actions: [
          TextButton(
            child: const Text("Fechar"),
            onPressed: () {
              Navigator.of(ctx).pop();
            },
          )
        ],
      ),
    );
  }

  void _showLogoutConfirmationDialog(
      BuildContext context, AuthService authService) {
    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text("Sair da Conta"),
        content: const Text("Tem certeza que deseja sair?"),
        actions: [
          TextButton(
            child: const Text("Cancelar"),
            onPressed: () {
              Navigator.of(dialogContext).pop();
            },
          ),
          TextButton(
            child: Text(
              "Sair",
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
            onPressed: () {
              // Primeiro, fechamos o diálogo.
              Navigator.of(dialogContext).pop();
              // Depois, chamamos a função de logout.
              authService.logout();

              // vvvvvvvvvvvvvv ALTERAÇÃO PRINCIPAL vvvvvvvvvvvvvvvv
              // Finalmente, navegamos para a tela de boas-vindas e removemos todas as
              // telas anteriores do histórico, para que o usuário não possa "voltar".
              Navigator.of(context, rootNavigator: true)
                  .pushNamedAndRemoveUntil(
                AppRoutes.welcome,
                (Route<dynamic> route) => false,
              );
              // ^^^^^^^^^^^^^^^^ FIM DA ALTERAÇÃO ^^^^^^^^^^^^^^^^
            },
          ),
        ],
      ),
    );
  }

  Widget _buildStreakIcon(BuildContext context, int streak) {
    IconData iconData = Icons.whatshot;
    Color iconColor = Colors.grey;
    String tooltip = "Complete uma lição hoje para iniciar sua ofensiva!";

    if (streak > 0) {
      tooltip = "Ofensiva de $streak dia(s)!";
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
    }

    return Tooltip(
      message: tooltip,
      child: Row(
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

  @override
  Widget build(BuildContext context) {
    final authService = AuthService.instance;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meu Perfil',
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: theme.scaffoldBackgroundColor,
        actions: const [
          XpBoostTimerWidget(),
          SizedBox(width: 8),
          GemasDisplayWidget(),
          SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ValueListenableBuilder<User?>(
              valueListenable: authService.currentUserNotifier,
              builder: (context, user, _) {
                return ValueListenableBuilder<UserProfileModel>(
                  valueListenable: ProgressService.instance.userProfileNotifier,
                  builder: (context, profile, child) {
                    double progressToNextLevel = 0;
                    final xpNeededForThisLevel =
                        profile.nextLevelBaseXp - profile.currentLevelBaseXp;
                    if (xpNeededForThisLevel > 0) {
                      progressToNextLevel =
                          profile.currentLevelXp / xpNeededForThisLevel;
                    }
                    final displayName =
                        user?.displayName ?? user?.email ?? 'Convidado';

                    return Column(
                      children: [
                        const SizedBox(height: 16),
                        Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            AvatarDisplay(
                                avatarId: profile.avatarId, size: 120),
                            Material(
                              color: theme.primaryColor,
                              shape: const CircleBorder(),
                              elevation: 2,
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context)
                                      .pushNamed(AppRoutes.editProfile);
                                },
                                customBorder: const CircleBorder(),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(Icons.edit,
                                      color: Colors.white, size: 20),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 16),
                        Text(displayName,
                            style: theme.textTheme.headlineMedium,
                            textAlign: TextAlign.center),
                        const SizedBox(height: 32),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text('Nível ${profile.level}',
                                    style: theme.textTheme.titleLarge?.copyWith(
                                        fontWeight: FontWeight.bold)),
                                Text(profile.levelName,
                                    style: theme.textTheme.bodyMedium),
                              ],
                            ),
                            _buildStreakIcon(context, profile.streak),
                          ],
                        ),
                        const SizedBox(height: 32),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              'Progresso para o Nível ${profile.level + 1}',
                              style: theme.textTheme.bodyLarge),
                        ),
                        const SizedBox(height: 8),
                        LinearProgressIndicator(
                          value: progressToNextLevel,
                          minHeight: 18,
                          borderRadius: BorderRadius.circular(10),
                          backgroundColor: Colors.grey[300],
                          valueColor: AlwaysStoppedAnimation<Color>(
                              theme.colorScheme.secondary),
                        ),
                        const SizedBox(height: 8),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              '${profile.currentLevelXp} / $xpNeededForThisLevel XP',
                              style: theme.textTheme.bodyMedium),
                        ),
                        const SizedBox(height: 40),
                        ElevatedButton.icon(
                          icon: const Icon(Icons.storefront),
                          label: const Text('Visitar a Loja'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: theme.colorScheme.primary,
                            foregroundColor: theme.colorScheme.onPrimary,
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                            elevation: 4,
                            shadowColor: Colors.black.withOpacity(0.2),
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed(AppRoutes.loja);
                          },
                        ),
                        const SizedBox(height: 12),
                        OutlinedButton.icon(
                          icon: const Icon(Icons.info_outline),
                          label: const Text('Sobre o App'),
                          style: OutlinedButton.styleFrom(
                            foregroundColor: theme.textTheme.bodyLarge?.color,
                            minimumSize: const Size(double.infinity, 50),
                            side: BorderSide(color: Colors.grey.shade300),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12)),
                          ),
                          onPressed: () => _showAboutDialog(context),
                        ),
                        const SizedBox(height: 24),
                        Center(
                          child: TextButton.icon(
                            icon: Icon(Icons.logout,
                                color: theme.colorScheme.error),
                            label: Text(
                              'Sair',
                              style: TextStyle(color: theme.colorScheme.error),
                            ),
                            onPressed: () {
                              _showLogoutConfirmationDialog(
                                  context, authService);
                            },
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
