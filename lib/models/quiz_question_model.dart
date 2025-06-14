class QuizQuestionModel {
  // --- CAMPO ADICIONADO ---
  // Este ID é essencial para identificar cada pergunta de forma única.
  final String id;

  final String questionText;
  final List<String> options;
  final int correctAnswerIndex;

  QuizQuestionModel({
    required this.id, // Adicionado ao construtor
    required this.questionText,
    required this.options,
    required this.correctAnswerIndex,
  });
}
