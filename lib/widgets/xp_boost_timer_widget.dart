import 'dart:async';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class XpBoostTimerWidget extends StatefulWidget {
  const XpBoostTimerWidget({Key? key}) : super(key: key);

  @override
  State<XpBoostTimerWidget> createState() => _XpBoostTimerWidgetState();
}

class _XpBoostTimerWidgetState extends State<XpBoostTimerWidget> {
  Timer? _timer;
  Duration _remainingTime = Duration.zero;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer(DateTime expiryTime) {
    _timer?.cancel();

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final now = DateTime.now();
      if (!mounted) {
        timer.cancel();
        return;
      }
      final remaining = expiryTime.difference(now);

      if (remaining.isNegative) {
        setState(() => _remainingTime = Duration.zero);
        timer.cancel();
      } else {
        setState(() => _remainingTime = remaining);
      }
    });
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "$twoDigitMinutes:$twoDigitSeconds";
  }

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
        if (!snapshot.hasData || snapshot.hasError) {
          return const SizedBox.shrink();
        }

        final data = snapshot.data!.data() as Map<String, dynamic>?;
        final activeBoosts =
            data?['activeBoosts'] as Map<String, dynamic>? ?? {};
        final Timestamp? boostExpiry = activeBoosts['xpBoostExpiry'];

        if (boostExpiry == null ||
            boostExpiry.toDate().isBefore(DateTime.now())) {
          _timer?.cancel();
          return const SizedBox.shrink();
        }

        if (_timer == null || !_timer!.isActive) {
          _startTimer(boostExpiry.toDate());
        }

        return Tooltip(
          message: "XP em Dobro Ativo!",
          child: Chip(
            avatar: Icon(
              Icons.bolt,
              color: Colors.purple.shade800,
              size: 20,
            ),
            label: Text(
              _formatDuration(_remainingTime),
              style: theme.textTheme.titleMedium?.copyWith(
                color: Colors.purple.shade900,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.purple.shade100,
            // Padding horizontal reduzido para evitar overflow
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: BorderSide(color: Colors.purple.shade200),
            ),
          ),
        );
      },
    );
  }
}
