import 'package:flutter/material.dart';
import 'package:fquiz/widgets/radial_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.5),
            image: DecorationImage(
              image: AssetImage("/images/bckg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: const SizedBox.expand(child: RadialMenu())),
    );
  }
}
