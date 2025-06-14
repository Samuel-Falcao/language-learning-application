import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color? color;

  const NavButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color, // Usa a cor do tema se nenhuma for passada
          minimumSize: const Size(double.infinity, 55),
        ),
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}
