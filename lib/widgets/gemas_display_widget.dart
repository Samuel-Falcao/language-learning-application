import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GemasDisplayWidget extends StatelessWidget {
  const GemasDisplayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final User? user = FirebaseAuth.instance.currentUser;
    final theme = Theme.of(context);

    if (user == null) {
      return const SizedBox.shrink();
    }

    return StreamBuilder<DocumentSnapshot>(
      stream: FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox(
            width: 24,
            height: 24,
            child: CircularProgressIndicator(strokeWidth: 2),
          );
        }

        if (!snapshot.hasData || snapshot.hasError) {
          return const Icon(Icons.warning_amber_rounded, color: Colors.grey);
        }

        final data = snapshot.data!.data() as Map<String, dynamic>?;
        final int gemas = data?['gems'] ?? 0;

        return Tooltip(
          message: "Saldo de Gemas",
          child: Chip(
            avatar: Icon(
              Icons.monetization_on,
              color: Colors.orange.shade800,
              size: 20,
            ),
            label: Text(
              gemas.toString(),
              style: theme.textTheme.titleMedium?.copyWith(
                color: Colors.orange.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.orange.shade100,
            // Padding ajustado para corresponder ao Chip do título
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: Colors.orange.shade200)),
          ),
        );
      },
    );
  }
}
