import 'package:flutter/material.dart';
import 'package:fquiz/models/category.dart';
import 'package:fquiz/models/question.dart';
import 'package:fquiz/providers/category_provider.dart';
import 'package:fquiz/providers/questions_provider.dart';
import 'package:fquiz/widgets/pageview_content_widget.dart';
import 'package:provider/provider.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen({Key? key}) : super(key: key);
  static const routeName = '/quiz';
  late List<Question> _questions = [];
  late Category _category;
  final PageController _controller = PageController(viewportFraction: 0.9);

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
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: _questions.length,
                  itemBuilder: (context, index) => SizedBox.expand(
                      child: SingleChildScrollView(
                    primary: false,
                    key: UniqueKey(),
                    child: PageViewContent(
                        key: UniqueKey(),
                        question: _questions[index],
                        index: index),
                  )),
                )),
            appBar: AppBar(
              title:
                  Text('FQu!z', style: Theme.of(context).textTheme.headline4),
              actions: [
                Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    //borderRadius: BorderRadius.circular(20),
                    color: Color(_category.color),
                  ),
                  child: Icon(IconData(_category.icon,
                      fontFamily: _category.fontFamily,
                      fontPackage: 'font_awesome_flutter')),
                ),
              ], //color: Colors.white,
            ),
          );
        });
  }

  Future<void> _getQuestions(BuildContext context) async {
    var providerQuestion =
        Provider.of<QuestionsProvider>(context, listen: false);
    _questions = providerQuestion.questions;
    providerQuestion.controller = _controller;

    var providerCategory =
        Provider.of<CategoryProvider>(context, listen: false);
    _category = providerCategory.category;
  }
}
