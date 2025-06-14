import 'package:flutter/foundation.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/score_model.dart';
import '../models/lesson_model.dart';
import '../models/user_profile_model.dart';

class ProgressService {
  ProgressService._privateConstructor();
  static final ProgressService instance = ProgressService._privateConstructor();

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  final ValueNotifier<Map<String, ScoreModel>> scoresNotifier =
      ValueNotifier({});
  final ValueNotifier<UserProfileModel> userProfileNotifier =
      ValueNotifier(UserProfileModel());
  
  final ValueNotifier<Map<String, dynamic>> quizProgressNotifier =
      ValueNotifier({});
  final ValueNotifier<Map<String, dynamic>> phraseProgressNotifier =
      ValueNotifier({});
      
  final ValueNotifier<Set<String>> completedActivitiesNotifier =
      ValueNotifier({});

  static const Map<int, int> _levelThresholds = {
    1: 0,
    2: 100,
    3: 250,
    4: 500,
    5: 1000
  };
  static const Map<int, String> _levelNames = {
    1: "Novato",
    2: "Aprendiz",
    3: "Explorador",
    4: "Viajante",
    5: "Mestre"
  };

  void reset() {
    userProfileNotifier.value = UserProfileModel();
    scoresNotifier.value = {};
    quizProgressNotifier.value = {};
    phraseProgressNotifier.value = {};
    completedActivitiesNotifier.value = {};
    debugPrint("--- Estado do ProgressService limpo com sucesso! ---");
  }

  DateTime _normalizeDate(DateTime dt) =>
      DateTime.utc(dt.year, dt.month, dt.day);

  int _getPeriodIndex(DateTime date) {
    final epoch = DateTime.utc(2024, 1, 1);
    final utcDate = _normalizeDate(date);
    return utcDate.difference(epoch).inDays ~/ 3;
  }

  Future<void> loadUserData(User user) async {
    try {
      final userDocRef = _firestore.collection('users').doc(user.uid);
      var doc = await userDocRef.get();

      if (!doc.exists || doc.data() == null) {
        debugPrint(
            "Documento do utilizador não encontrado. A limpar dados locais.");
        reset();
        return;
      }

      var data = doc.data()!;
      final updates = <String, dynamic>{};

      final int storedPeriodIndex = data['currentPeriodIndex'] ?? -1;
      final DateTime now = DateTime.now();
      final int currentPeriodIndex = _getPeriodIndex(now);
      if (storedPeriodIndex < currentPeriodIndex) {
        updates.addAll({
          'currentPeriodIndex': currentPeriodIndex,
          'periodXP': 0,
          'lastPeriodXP': data['periodXP'] ?? 0,
          'periodChallengeCompleted': false,
        });
      }

      final Timestamp? lastLoginTimestamp = data['lastLoginDate'];
      if (lastLoginTimestamp != null) {
        final diff = _normalizeDate(now)
            .difference(_normalizeDate(lastLoginTimestamp.toDate()))
            .inDays;
        if (diff == 1)
          updates['currentStreak'] = FieldValue.increment(1);
        else if (diff > 1) updates['currentStreak'] = 1;
      } else {
        updates['currentStreak'] = 1;
      }
      updates['lastLoginDate'] = Timestamp.fromDate(now);

      if (updates.isNotEmpty) {
        await userDocRef.update(updates);
        doc = await userDocRef.get();
        data = doc.data()!;
      }

      completedActivitiesNotifier.value =
          Set<String>.from(data['completedActivities'] ?? []);
      quizProgressNotifier.value =
          data['quizProgress'] as Map<String, dynamic>? ?? {};
      phraseProgressNotifier.value =
          data['phraseProgress'] as Map<String, dynamic>? ?? {};
          
      userProfileNotifier.value = _calculateProfile(data);

      final scoresSnapshot =
          await userDocRef.collection('activityScores').get();
      final loadedScores = <String, ScoreModel>{};
      for (var scoreDoc in scoresSnapshot.docs) {
        loadedScores[scoreDoc.id] = ScoreModel.fromJson(scoreDoc.data());
      }
      scoresNotifier.value = loadedScores;
    } catch (e) {
      debugPrint("Erro ao carregar dados do utilizador: $e");
    }
  }

  Future<void> completeActivity(
      {required String languageId,
      required LessonModel lesson,
      required String activityType,
      required int score,
      required int totalQuestions,
      List<String> wrongQuestionIds = const []}) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;
    try {
      final userDocRef = _firestore.collection('users').doc(user.uid);
      final xpDaAtividade = lesson.xpReward;
      final uniqueActivityId = '${languageId}_${lesson.id}_$activityType';

      final scoreData = ScoreModel(
          lessonTitle: lesson.title,
          activityType: activityType,
          score: score,
          totalQuestions: totalQuestions,
          date: DateTime.now(),
          wrongQuestionIds: wrongQuestionIds);

      await userDocRef
          .collection('activityScores')
          .doc(uniqueActivityId)
          .set(scoreData.toJson());

      final Map<String, dynamic> updates = {
        'totalXp': FieldValue.increment(xpDaAtividade),
        'periodXP': FieldValue.increment(xpDaAtividade),
        'gems': FieldValue.increment(5),
        'completedActivities': FieldValue.arrayUnion([uniqueActivityId])
      };
      await userDocRef.update(updates);

      if (activityType == 'quiz') {
        await clearQuizProgress(lesson.id);
      } else if (activityType == 'frases') {
        await clearPhraseProgress(lesson.id);
      }

      // --- ALTERAÇÃO PRINCIPAL ---
      // Esta forma de atualizar o notificador é mais robusta para garantir que
      // o ValueListenableBuilder detete a mudança.
      scoresNotifier.value = {
        ...scoresNotifier.value,
        uniqueActivityId: scoreData,
      };

      final newCompleted = Set<String>.from(completedActivitiesNotifier.value);
      newCompleted.add(uniqueActivityId);
      completedActivitiesNotifier.value = newCompleted;
      
      final currentProfileData = userProfileNotifier.value;
      userProfileNotifier.value = UserProfileModel(
        totalXp: currentProfileData.totalXp + xpDaAtividade,
        gems: currentProfileData.gems + 5,
        level: currentProfileData.level, 
        levelName: currentProfileData.levelName,
        currentLevelXp: currentProfileData.currentLevelXp,
        currentLevelBaseXp: currentProfileData.currentLevelBaseXp,
        nextLevelBaseXp: currentProfileData.nextLevelBaseXp,
        streak: currentProfileData.streak,
        avatarId: currentProfileData.avatarId,
        periodXP: currentProfileData.periodXP + xpDaAtividade,
        lastPeriodXP: currentProfileData.lastPeriodXP,
        periodChallengeCompleted: currentProfileData.periodChallengeCompleted,
      );


    } catch (e) {
      debugPrint("Erro ao completar atividade: $e");
    }
  }

  // Métodos de Quiz
  Future<void> saveQuizProgress(
      {required String lessonId,
      required int questionIndex,
      required int score}) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null || (questionIndex == 0 && score == 0)) return;
    try {
      await _firestore.collection('users').doc(user.uid).update({
        'quizProgress.$lessonId': {'index': questionIndex, 'score': score}
      });
    } catch (e) {
      debugPrint("Erro ao salvar progresso do quiz: $e");
    }
  }

  Future<Map<String, int>?> loadQuizProgress(String lessonId) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return null;
    try {
      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      final data = userDoc.data();
      if (data != null && data.containsKey('quizProgress')) {
        final quizProgress = data['quizProgress'] as Map<String, dynamic>;
        if (quizProgress.containsKey(lessonId)) {
          final progressData = quizProgress[lessonId] as Map<String, dynamic>;
          return {
            'index': progressData['index'] as int,
            'score': progressData['score'] as int,
          };
        }
      }
    } catch (e) {
      debugPrint("Erro ao carregar progresso do quiz: $e");
    }
    return null;
  }
  
  Future<void> clearQuizProgress(String lessonId) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;
    try {
      await _firestore
          .collection('users')
          .doc(user.uid)
          .update({'quizProgress.$lessonId': FieldValue.delete()});
    } catch (e) {
      debugPrint("Erro ao limpar progresso do quiz: $e");
    }
  }

  // Métodos de Frases
  Future<void> savePhraseProgress(
      {required String lessonId,
      required int phraseIndex,
      required int score}) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null || (phraseIndex == 0 && score == 0)) return;
    try {
      await _firestore.collection('users').doc(user.uid).update({
        'phraseProgress.$lessonId': {'index': phraseIndex, 'score': score}
      });
    } catch (e) {
      debugPrint("Erro ao salvar progresso das frases: $e");
    }
  }

  Future<Map<String, int>?> loadPhraseProgress(String lessonId) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return null;
    try {
      final userDoc = await _firestore.collection('users').doc(user.uid).get();
      final data = userDoc.data();
      if (data != null && data.containsKey('phraseProgress')) {
        final phraseProgress = data['phraseProgress'] as Map<String, dynamic>;
        if (phraseProgress.containsKey(lessonId)) {
          final progressData = phraseProgress[lessonId] as Map<String, dynamic>;
          return {
            'index': progressData['index'] as int,
            'score': progressData['score'] as int,
          };
        }
      }
    } catch (e) {
      debugPrint("Erro ao carregar progresso das frases: $e");
    }
    return null;
  }
  
  Future<void> clearPhraseProgress(String lessonId) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;
    try {
      await _firestore
          .collection('users')
          .doc(user.uid)
          .update({'phraseProgress.$lessonId': FieldValue.delete()});
    } catch (e) {
      debugPrint("Erro ao limpar progresso das frases: $e");
    }
  }
  
  // Métodos de cálculo de perfil
  int _calculateLevelFromXp(int totalXp) {
    int level = 1;
    for (var entry in _levelThresholds.entries) {
      if (totalXp >= entry.value) {
        level = entry.key;
      }
    }
    return level;
  }
  
  UserProfileModel _calculateProfile(Map<String, dynamic> data) {
    final totalXp = data['totalXp'] ?? 0;
    final level = _calculateLevelFromXp(totalXp);
    return UserProfileModel(
        totalXp: totalXp,
        level: level,
        levelName: _levelNames[level] ?? "Lendário",
        currentLevelXp: totalXp - (_levelThresholds[level] ?? 0),
        currentLevelBaseXp: _levelThresholds[level] ?? 0,
        nextLevelBaseXp: _levelThresholds[level + 1] ??
            ((_levelThresholds[level] ?? 0) + 100),
        streak: data['currentStreak'] ?? 0,
        avatarId: data['avatarId'] ?? 'default_avatar',
        gems: data['gems'] ?? 0,
        periodXP: data['periodXP'] ?? 0,
        lastPeriodXP: data['lastPeriodXP'] ?? 0,
        periodChallengeCompleted: data['periodChallengeCompleted'] ?? false);
  }
}
