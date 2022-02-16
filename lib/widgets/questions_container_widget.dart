import 'package:flutter/material.dart';
import 'package:fquiz/models/question.dart';

class QuestionContainer extends StatelessWidget {
  final Question question;
  QuestionContainer({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
      padding: const EdgeInsets.all(15.0),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Theme.of(context).primaryColor),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Text(question.question,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline3),
    );
  }
}
