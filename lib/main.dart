import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vector_math/vector_math.dart' as vector;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.5),
              image: DecorationImage(
                image: AssetImage("/images/bckg.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: const SizedBox.expand(child: RadialMenu())),
      ),
    );
  }
}

class RadialMenu extends StatefulWidget {
  const RadialMenu({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _RadialMenuState();
}

class _RadialMenuState extends State<RadialMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late RadialAnimation radialAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 900), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    radialAnimation = RadialAnimation(controller: _controller);
    radialAnimation.execute();
    return radialAnimation;
  }
}

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
  IconData iconMenuButton = FontAwesomeIcons.bookOpen;
  Color colorMenuButton = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, builder) {
          return Transform.rotate(
            angle: vector.radians(rotation.value),
            child: Stack(
              alignment: Alignment.center,
              children: [
                _buildButton(0,
                    color: Colors.amberAccent,
                    icon: FontAwesomeIcons.js,
                    id: '1'),
                _buildButton(45,
                    color: Colors.red, icon: FontAwesomeIcons.angular, id: '2'),
                _buildButton(90,
                    color: Colors.grey,
                    icon: FontAwesomeIcons.database,
                    id: '3'),
                _buildButton(135,
                    color: Colors.blue, icon: FontAwesomeIcons.react, id: '4'),
                _buildButton(180,
                    color: Colors.deepOrange,
                    icon: FontAwesomeIcons.html5,
                    id: '5'),
                _buildButton(225,
                    color: Colors.amber, icon: FontAwesomeIcons.aws, id: '6'),
                _buildButton(270,
                    color: Colors.blue, icon: FontAwesomeIcons.java, id: '7'),
                _buildButton(315,
                    color: Colors.green, icon: FontAwesomeIcons.leaf, id: '8'),
                /*Transform.scale(
                  scale: scale.value - 1.5,
                  child: FloatingActionButton(
                    child: const Icon(FontAwesomeIcons.bookOpen),
                    onPressed: () => _close(),
                    backgroundColor: Colors.red,
                  ),
                ),*/
                Transform.scale(
                  scale: scale.value,
                  child: FloatingActionButton(
                    backgroundColor: colorMenuButton,
                    child: Icon(iconMenuButton),
                    onPressed: _open,
                  ),
                )
              ],
            ),
          );
        });
  }

  _buildButton(double angle,
      {required Color color, required IconData icon, required String id}) {
    final double radian = vector.radians(angle);
    return Transform(
      transform: Matrix4.identity()
        ..translate(
          (translation.value) * cos(radian),
          (translation.value) * sin(radian),
        ),
      child: FloatingActionButton(
        child: Icon(icon),
        backgroundColor: color,
        onPressed: () => _close(id: id, color: color, icon: icon),
      ),
    );
  }

  execute() {
    _open();
  }

  _open() {
    controller.forward();
  }

  _close(
      {required String id,
      required Color color,
      required IconData icon}) async {
    iconMenuButton = icon;
    colorMenuButton = color;
    await controller.reverse();
    if (id != null) print(id);
  }
}
