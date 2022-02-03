import 'package:flutter/material.dart';
import 'package:fquiz/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.pink,
            primaryColor: Colors.green,
            primaryColorLight: Colors.blue,
            primaryColorDark: Colors.blueGrey,
            textTheme: ThemeData.light().textTheme.copyWith(
                    headline4: const TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ))),
        home: const HomeScreen(),
        routes: {});
  }
}
