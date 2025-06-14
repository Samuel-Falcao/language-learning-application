import 'package:flutter/material.dart';
import 'gemas_display_widget.dart';
import 'xp_boost_timer_widget.dart';

// Versão final da AppBar customizada para garantir que o título não seja cortado.
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    // Agora retornamos uma AppBar de verdade, que gerencia o layout automaticamente.
    return AppBar(
      // O título é passado diretamente para a propriedade `title` da AppBar.
      title: Text(
        title,
        style: theme.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
      // Alinha à esquerda para dar mais espaço.
      centerTitle: false,
      elevation: 0,
      backgroundColor: theme.scaffoldBackgroundColor, // Fundo transparente.
      // Remove o botão de voltar padrão que pode aparecer em algumas telas.
      automaticallyImplyLeading: false,

      // Os ícones vão para a propriedade `actions`, que é o lugar correto.
      // O Flutter garante que haverá espaço para eles.
      actions: const [
        XpBoostTimerWidget(),
        SizedBox(width: 8),
        GemasDisplayWidget(),
        SizedBox(width: 16), // Espaçamento final para não colar na borda
      ],
    );
  }

  // A altura da AppBar continua a mesma.
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
