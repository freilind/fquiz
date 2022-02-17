import 'package:flutter/material.dart';
import 'package:fquiz/models/question.dart';
import 'package:fquiz/widgets/questions_container_widget.dart';

import 'gesture_option_widget.dart';

class PageviewContent extends StatelessWidget {
  final Question question;
  final int index;
  PageviewContent({Key? key, required this.question, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
      QuestionContainer(key: UniqueKey(), question: question),
      ...listOptions(context, question, index)
    ]);
  }

  List listOptions(BuildContext ctx, Question q, int index) {
    var options = [];
    for (var option in q.options) {
      options.add(GestureOption(
          key: UniqueKey(), option: option, question: q, index: index));
    }
    //options.shuffle();
    return options;
  }
}
