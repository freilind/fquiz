import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:fquiz/models/question.dart';

class QuestionContainer extends StatelessWidget {
  final Question question;
  const QuestionContainer({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 15.0),
      padding: const EdgeInsets.all(10.0),
      constraints: const BoxConstraints(
        minWidth: double.infinity,
        minHeight: 50.0,
        maxHeight: 250.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Theme.of(context).primaryColor),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: AutoSizeText(question.question,
          textAlign: question.question.length < 25
              ? TextAlign.center
              : TextAlign.justify,
          style: question.question.length < 25
              ? Theme.of(context).textTheme.bodyText1
              : Theme.of(context).textTheme.bodyText2,
          maxLines: 15),
    );
  }
}
