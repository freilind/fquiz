import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fquiz/data/categories.dart';
import 'package:fquiz/data/questionsList.dart';
import 'package:fquiz/models/category.dart';
import 'package:fquiz/models/option.dart';
import 'package:fquiz/models/question.dart';
import 'package:fquiz/providers/category_provider.dart';
import 'package:fquiz/providers/questions_provider.dart';
import 'package:fquiz/screens/quiz_screen2.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';
import 'package:vector_math/vector_math.dart' as vector;

class RadialAnimation extends StatelessWidget {
  RadialAnimation({Key? key, required this.controller})
      : scale = Tween<double>(
          begin: 1.5,
          end: 0.0,
        ).animate(
            CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn)),
        translation = Tween<double>(
          begin: 0.0,
          end: 100.0,
        ).animate(
            CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn)),
        rotation = Tween<double>(
          begin: 0.0,
          end: 360.0,
        ).animate(CurvedAnimation(
            parent: controller, curve: const Interval(0.0, 0.7))),
        super(key: key);

  final AnimationController controller;
  final Animation<double> scale;
  final Animation<double> translation;
  final Animation<double> rotation;
  int iconMenuButton = 0xf518;
  int colorMenuButton = 0xFF2196F3;
  String fontMenuButton = 'FontAwesomeSolid';
  late List<Question> _questions = [];
  var uuid = const Uuid();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, builder) {
          return Transform.rotate(
            angle: vector.radians(rotation.value),
            child: Stack(
              alignment: Alignment.center,
              children: [..._buildButtons(context), buildTransform()],
            ),
          );
        });
  }

  Transform buildTransform() {
    return Transform.scale(
      scale: scale.value,
      child: FloatingActionButton(
        backgroundColor: Color(colorMenuButton),
        child: Icon(IconData(iconMenuButton,
            fontFamily: fontMenuButton, fontPackage: 'font_awesome_flutter')),
        onPressed: _open,
      ),
    );
  }

  _buildButtons(BuildContext context) {
    var buttons = [];
    double angle = -45;
    for (var category in categoriesList) {
      angle += 45;
      final double radian = vector.radians(angle);

      buttons.add(Transform(
        transform: Matrix4.identity()
          ..translate(
            (translation.value) * cos(radian),
            (translation.value) * sin(radian),
          ),
        child: FloatingActionButton(
          heroTag: category.id,
          child: Icon(IconData(category.icon,
              fontFamily: category.fontFamily,
              fontPackage: 'font_awesome_flutter')),
          backgroundColor: Color(category.color),
          onPressed: () {
            var categoryProvider =
                Provider.of<CategoryProvider>(context, listen: false);
            categoryProvider.category = category;
            _buildQuestion(context, category);
            _close(ctx: context, category: category);
          },
        ),
      ));
    }
    return buttons;
  }

  execute() {
    _open();
  }

  _open() {
    controller.forward();
  }

  _close({required ctx, required Category category}) async {
    iconMenuButton = category.icon;
    fontMenuButton = category.fontFamily;
    colorMenuButton = category.color;
    await controller.reverse();
    Navigator.of(ctx).pushNamed(QuizScreen2.routeName, arguments: '');
  }

  Future<void> _buildQuestion(BuildContext ctx, Category category) async {
    var questionsProvider = Provider.of<QuestionsProvider>(ctx, listen: false);
    var qList = questionsList[category.name];
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
    questionsProvider.questions = _questions;
  }
}
