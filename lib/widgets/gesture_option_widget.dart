import 'package:flutter/material.dart';
import 'package:fquiz/models/option.dart';
import 'package:fquiz/models/question.dart';
import 'package:fquiz/providers/questions_provider.dart';
import 'package:provider/provider.dart';

class GestureOption extends StatefulWidget {
  Option option;
  Question question;
  int index;
  GestureOption(
      {Key? key,
      required this.option,
      required this.question,
      required this.index})
      : super(key: key);

  @override
  State<GestureOption> createState() => _GestureOptionState();
}

class _GestureOptionState extends State<GestureOption> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!widget.question.answered) {
          var provider = Provider.of<QuestionsProvider>(context, listen: false);
          provider.nextQuestion(widget.index);
          setState(() {
            widget.question.answered = true;
            widget.option.selected = true;
          });
        }

        if (widget.option.correct) {
          print(widget.option.correct);
        } else {
          print(widget.option.correct);
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        decoration: BoxDecoration(
            color: widget.question.answered
                ? widget.option.selected
                    ? widget.option.correct
                        ? Colors.green
                        : Colors.red
                    : Theme.of(context).primaryColorLight
                : Theme.of(context).primaryColorLight,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Text(widget.option.option,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText1),
      ),
    );
  }
}
