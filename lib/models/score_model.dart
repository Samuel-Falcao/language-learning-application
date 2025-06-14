import 'package:cloud_firestore/cloud_firestore.dart';

class ScoreModel {
  final String lessonTitle;
  final String activityType;
  final int score;
  final int totalQuestions;
  final DateTime date;
  final List<String> wrongQuestionIds;

  ScoreModel({
    required this.lessonTitle,
    required this.activityType,
    required this.score,
    required this.totalQuestions,
    required this.date,
    this.wrongQuestionIds = const [],
  });

  factory ScoreModel.fromJson(Map<String, dynamic> json) {
    return ScoreModel(
      lessonTitle: json['lessonTitle'] ?? '',
      activityType: json['activityType'] ?? '',
      score: json['score'] ?? 0,
      totalQuestions: json['totalQuestions'] ?? 0,
      date: (json['date'] as Timestamp).toDate(),
      wrongQuestionIds: List<String>.from(json['wrongQuestionIds'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lessonTitle': lessonTitle,
      'activityType': activityType,
      'score': score,
      'totalQuestions': totalQuestions,
      'date': Timestamp.fromDate(date),
      'wrongQuestionIds': wrongQuestionIds,
    };
  }
}
