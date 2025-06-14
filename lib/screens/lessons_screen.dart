// lib/screens/lessons_screen.dart
import 'package:flutter/material.dart';

class LessonsScreen extends StatelessWidget {
  const LessonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Lições",
                style: Theme.of(context).textTheme.displaySmall?.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.black87),
                textAlign: TextAlign.center),
            const Expanded(
              child: Center(
                child: Text(
                  'Em breve...',
                  style: TextStyle(fontSize: 24, color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
