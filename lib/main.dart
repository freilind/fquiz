import 'package:flutter/material.dart';
import 'package:fquiz/providers/auth_provider.dart';
import 'package:fquiz/providers/category_provider.dart';
import 'package:fquiz/screens/home_screen.dart';
import 'package:fquiz/screens/quiz_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: AuthProvider()),
        ChangeNotifierProvider.value(value: CategoryProvider()),
      ],
      child: Consumer<AuthProvider>(
          builder: (ctx, auth, _) => (MaterialApp(
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
                              letterSpacing: 0.5))),
                  home: const HomeScreen(),
                  routes: {
                    QuizScreen.routeName: (_) => const QuizScreen(),
                  }))),
    );
  }
}
