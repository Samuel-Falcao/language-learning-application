// lib/models/lesson_model.dart

import 'quiz_question_model.dart';
import 'phrase_model.dart';

class LessonModel {
  final String id;
  final String title;
  final String description;
  final int xpReward;

  // Uma lição pode conter tanto um quiz quanto uma atividade de frases.
  // Deixamos as listas aqui para o caso de uma lição ter os dois tipos.
  final List<QuizQuestionModel> quizQuestions;
  final List<PhraseModel> phraseActivities;

  LessonModel({
    required this.id,
    required this.title,
    required this.description,
    this.xpReward = 10, // Recompensa padrão de 10 XP por lição
    this.quizQuestions = const [], // Lista vazia por padrão
    this.phraseActivities = const [], // Lista vazia por padrão
  });
}
