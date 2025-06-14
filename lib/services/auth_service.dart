import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'progress_service.dart';

class AuthService {
  AuthService._privateConstructor() {
    _auth.authStateChanges().listen((User? user) async {
      currentUserNotifier.value = user;
      if (user != null) {
        await ProgressService.instance.loadUserData(user);
      } else {
        ProgressService.instance.reset();
      }
    });
  }
  static final AuthService instance = AuthService._privateConstructor();

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final ValueNotifier<User?> currentUserNotifier = ValueNotifier(null);
  User? get currentUser => _auth.currentUser;

  Future<String?> login(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return null;
    } on FirebaseAuthException {
      return "Login falhou. Verifique o seu email e senha.";
    } catch (e) {
      return "Ocorreu um erro inesperado.";
    }
  }

  Future<void> logout() async {
    await _auth.signOut();
  }

  Future<String?> register(
      String email, String password, String username) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      User? newUser = userCredential.user;
      if (newUser != null) {
        await newUser.updateDisplayName(username);
        await _firestore.collection('users').doc(newUser.uid).set({
          'username': username,
          'email': email,
          'createdAt': FieldValue.serverTimestamp(),
          'totalXp': 0,
          'gems': 100,
          'completedActivities': [],
          'inventory': {'streak_freeze': 0},
          'currentStreak': 0,
          'lastLoginDate': null,
          'currentPeriodIndex': -1,
          'periodXP': 0,
          'lastPeriodXP': 0,
          'periodChallengeCompleted': false,
        });
        await ProgressService.instance.loadUserData(newUser);
      }
      return null;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') return 'A senha é muito fraca.';
      if (e.code == 'email-already-in-use') return 'Este email já está em uso.';
      return 'Falha no registo. Verifique os seus dados.';
    } catch (e) {
      return "Ocorreu um erro inesperado.";
    }
  }

  // --- FUNÇÃO UPDATEUSERPROFILE CORRIGIDA ---
  Future<bool> updateUserProfile({String? newName, String? newAvatarId}) async {
    final user = _auth.currentUser;
    if (user == null) return false;
    try {
      final userDocRef = _firestore.collection('users').doc(user.uid);
      final updates = <String, dynamic>{};

      // Atualiza o nome de utilizador no Firebase Auth
      if (newName != null &&
          newName.isNotEmpty &&
          user.displayName != newName) {
        await user.updateDisplayName(newName);
        updates['username'] = newName;
      }

      if (newAvatarId != null) {
        updates['avatarId'] = newAvatarId;
      }

      if (updates.isNotEmpty) {
        await userDocRef.update(updates);
      }

      await ProgressService.instance.loadUserData(user);

      return true;
    } catch (e) {
      debugPrint("Erro ao atualizar o perfil: $e");
      return false;
    }
  }
}
