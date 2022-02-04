import 'package:flutter/material.dart';
import 'package:fquiz/providers/category_provider.dart';
import 'package:provider/provider.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);
  static const routeName = '/quiz';

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  String _title = '';
  late CategoryProvider categoryProvider;

  @override
  void initState() {
    categoryProvider = Provider.of<CategoryProvider>(context, listen: false);
    _title = categoryProvider.category.name;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("/images/bckg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox.expand(child: Text(_title))),
      appBar: AppBar(
          title: Text('FQu!z', style: Theme.of(context).textTheme.headline4)),
    );
  }
}
