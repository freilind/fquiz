import 'package:flutter/material.dart';
import 'package:fquiz/models/question.dart';
import 'package:fquiz/providers/base_provider.dart';

class QuestionsProvider extends BaseProvider with ChangeNotifier {
  late List<Question> _questions;

  List<Question> get questions => _questions;

  set questions(List<Question> value) {
    _questions = value;
    notifyListeners();
  }

  void notify() {
    notifyListeners();
  }
}
