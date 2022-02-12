import 'dart:convert';

import 'option.dart';

class Question {
  Question({
    required this.id,
    required this.question,
    required this.options,
    required this.explanation,
    required this.answered,
  });

  final String id;
  final String question;
  final List<Option> options;
  final String explanation;
  bool answered;

  Question copyWith({
    required String id,
    required String question,
    required List<Option> options,
    required String explanation,
    required bool answered,
  }) =>
      Question(
          id: id,
          question: question,
          options: options,
          explanation: explanation,
          answered: answered);

  factory Question.fromJson(String str) => Question.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Question.fromMap(Map<String, dynamic> json) => Question(
      id: json["id"],
      question: json["question"],
      options: List<Option>.from(json["options"].map((x) => Option.fromMap(x))),
      explanation: json["explanation"],
      answered: json["answered"]);

  Map<String, dynamic> toMap() => {
        "id": id,
        "question": question,
        "options": List<dynamic>.from(options.map((x) => x.toMap())),
        "explanation": explanation,
        "answered": answered
      };
}
