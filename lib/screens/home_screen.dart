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
            image: DecorationImage(
              image: AssetImage("/images/back.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: const SizedBox.expand(child: RadialMenu())),
      appBar: AppBar(
          title: Text('FQu!z', style: Theme.of(context).textTheme.headline4)),
    );
  }
}
