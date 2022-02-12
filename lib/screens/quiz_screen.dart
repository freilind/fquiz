import 'package:flutter/material.dart';
import 'package:fquiz/data/questionsList.dart';
import 'package:fquiz/models/option.dart';
import 'package:fquiz/models/question.dart';
import 'package:fquiz/providers/category_provider.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);
  static const routeName = '/quiz';

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  var uuid = const Uuid();
  String _title = '';
  late List<Question> _questions = [];
  late CategoryProvider categoryProvider;
  late PageController controller;
  int pageIndex = 0;

  @override
  void initState() {
    print('initState');
    categoryProvider = Provider.of<CategoryProvider>(context, listen: false);
    _title = categoryProvider.category.name;
    controller = PageController(viewportFraction: 0.9);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
        future: buildQuestion(),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return Text('Loading');
          }
          return Scaffold(
            body: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("/images/bckg.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: PageView.builder(
                  onPageChanged: onChangedPage,
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  //pageSnapping: true,
                  itemCount: _questions.length,
                  itemBuilder: (context, index) => SizedBox.expand(
                      child: buildPage(context, _questions[index], index)),
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

  onChangedPage(int index) {}

  Column buildPage(BuildContext ctx, Question question, int index) {
    return Column(children: [
      containerQuestion(ctx, question),
      ...listOptions(ctx, question, index)
    ]);
  }

  Container containerQuestion(BuildContext ctx, Question q) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
      padding: const EdgeInsets.all(15.0),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Theme.of(ctx).primaryColor),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Text(q.question,
          textAlign: TextAlign.center,
          style: Theme.of(ctx).textTheme.headline3),
    );
  }

  List listOptions(BuildContext ctx, Question q, int index) {
    var options = [];
    q.options.forEach((option) {
      options.add(gestureOption(ctx, option, q, index));
    });
    //options.shuffle();
    return options;
  }

  GestureDetector gestureOption(
      BuildContext ctx, Option opt, Question q, int index) {
    return GestureDetector(
      onTap: () {
        if (!q.answered) {
          setState(() {
            pageIndex = index;
            q.answered = true;
            opt.selected = true;
          });

          print('first time');
        }
        controller.jumpToPage(1);
        print(pageIndex);
        if (opt.correct) {
          print(opt.correct);
        } else {
          print(opt.correct);
        }
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        padding: const EdgeInsets.all(20.0),
        width: double.infinity,
        decoration: BoxDecoration(
            color: q.answered
                ? opt.selected
                    ? opt.correct
                        ? Colors.green
                        : Colors.red
                    : Theme.of(ctx).primaryColorLight
                : Theme.of(ctx).primaryColorLight,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Text(opt.option,
            textAlign: TextAlign.center,
            style: Theme.of(ctx).textTheme.bodyText1),
      ),
    );
  }

  Future<void> buildQuestion() async {
    if (_questions.isEmpty) {
      var qList = questionsList[_title];
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
    }
  }
}
