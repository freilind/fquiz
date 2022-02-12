import 'dart:convert';

class Option {
  Option(
      {required this.id,
      required this.option,
      required this.correct,
      required this.selected});

  final String id;
  final String option;
  final bool correct;
  bool selected;

  Option copyWith({
    required String id,
    required String option,
    required bool correct,
    required bool selected,
  }) =>
      Option(
        id: id,
        option: option,
        correct: correct,
        selected: selected,
      );

  factory Option.fromJson(String str) => Option.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Option.fromMap(Map<String, dynamic> json) => Option(
        id: json["id"],
        option: json["option"],
        correct: json["correct"],
        selected: json["selected"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "option": option,
        "correct": correct,
        "selected": selected,
      };
}
