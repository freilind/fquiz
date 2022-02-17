import 'package:flutter/material.dart';
import 'package:fquiz/data/questionsList.dart';
import 'package:fquiz/models/option.dart';
import 'package:fquiz/models/question.dart';
import 'package:fquiz/providers/base_provider.dart';
import 'package:fquiz/screens/result_screen.dart';
import 'package:uuid/uuid.dart';

class QuestionsProvider extends BaseProvider with ChangeNotifier {
  var uuid = const Uuid();
  late List<Question> _questions = [];
  late int _correctAnswer = 0;
  PageController _controller = PageController();

  set controller(PageController value) {
    _controller = value;
  }

  List<Question> get questions => _questions;

  set questions(List<Question> value) {
    _questions = value;
    notifyListeners();
  }

  int get correctAnswer => _correctAnswer;

  void addCount() {
    _correctAnswer += 1;
  }

  void notify() {
    notifyListeners();
  }

  Future<void> buildQuestion(String category) async {
    questions = [];
    _correctAnswer = 0;
    var qList = questionsList[category];
    qList?.forEach((q) {
      List<Option> arrayOptions = [];

      q['options'].forEach((opt) {
        arrayOptions.add(Option(
            id: uuid.v4(),
            option: opt['option'],
            correct: opt['correct'],
            selected: false));
      });

      _questions.add(Question(
          id: uuid.v4(),
          question: q['question'],
          options: arrayOptions,
          explanation: '',
          answered: false));
    });
    questions = _questions;
  }

  Future<void> nextQuestion(BuildContext context, int index) async {
    bool finish = isFinish();
    if (finish) {
      Future.delayed(const Duration(seconds: 1), () {
        Navigator.of(context).pushNamed(ResultScreen.routeName, arguments: '');
      });
    } else {
      if (questions.length != index + 1) {
        _controller.animateToPage(index + 1,
            duration: const Duration(seconds: 1), curve: Curves.linear);
      }
    }
  }

  bool isFinish() {
    bool answer = true;
    for (var question in questions) {
      answer = answer && question.answered;
    }
    return answer;
  }

  int getResult() {
    return correctAnswer;
  }
}
