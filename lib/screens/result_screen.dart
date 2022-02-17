import 'package:flutter/material.dart';
import 'package:fquiz/providers/questions_provider.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({Key? key}) : super(key: key);
  static const routeName = '/result';
  late int totalQuestions = 0;
  late int correctAnswer = 0;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
        future: _getResult(context),
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Text('Loading');
          }
          return Scaffold(
            body: Stack(children: [
              Container(
                  decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("/images/back-blue.png"),
                  fit: BoxFit.cover,
                ),
              )),
              Center(
                child: CircularPercentIndicator(
                  radius: 90,
                  lineWidth: 14,
                  percent: correctAnswer / totalQuestions,
                  animation: true,
                  animationDuration: 1000,
                  backgroundColor: Colors.red,
                  progressColor: Colors.green,
                  center: Text(
                    "${correctAnswer / totalQuestions * 100} %",
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  footer: Text("Result  FQu!z",
                      style: Theme.of(context).textTheme.headline4),
                ),
              ),
            ]),
            appBar: AppBar(
              leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.of(context)
                      .pushNamedAndRemoveUntil("/", (route) => false)),
              title: Text('FQu!z',
                  style: Theme.of(context)
                      .textTheme
                      .headline4), //color: Colors.white,
            ),
          );
        });
  }

  Future<void> _getResult(BuildContext context) async {
    var provider = Provider.of<QuestionsProvider>(context, listen: false);
    totalQuestions = provider.questions.length;
    correctAnswer = provider.getResult();
  }
}
