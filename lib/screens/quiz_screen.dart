import 'package:flutter/material.dart';
import 'package:fquiz/models/question.dart';
import 'package:fquiz/providers/questions_provider.dart';
import 'package:fquiz/widgets/pageview_content_widget.dart';
import 'package:provider/provider.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen({Key? key}) : super(key: key);
  static const routeName = '/quiz';
  late List<Question> _questions = [];
  PageController controller = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
        future: _getQuestions(context),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Text('Loading');
          }
          return Scaffold(
            body: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("/images/back.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: PageView.builder(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: _questions.length,
                  itemBuilder: (context, index) => SizedBox.expand(
                      child: SingleChildScrollView(
                    primary: false,
                    key: UniqueKey(),
                    child: PageviewContent(
                        key: UniqueKey(),
                        question: _questions[index],
                        index: index),
                  )),
                )),
            appBar: AppBar(
              title: Text('FQu!z',
                  style: Theme.of(context)
                      .textTheme
                      .headline4), //color: Colors.white,
            ),
          );
        });
  }

  Future<void> _getQuestions(BuildContext context) async {
    var provider = Provider.of<QuestionsProvider>(context, listen: false);
    _questions = provider.questions;
    provider.controller = controller;
  }
}
