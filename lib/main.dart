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

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 900), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return RadialAnimation(controller: _controller);
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
                    color: Colors.red,
                    icon: FontAwesomeIcons.thumbtack,
                    id: '1'),
                _buildButton(45,
                    color: Colors.green,
                    icon: FontAwesomeIcons.sprayCan,
                    id: '2'),
                _buildButton(90,
                    color: Colors.orange, icon: FontAwesomeIcons.fire, id: '3'),
                _buildButton(135,
                    color: Colors.blue,
                    icon: FontAwesomeIcons.kiwiBird,
                    id: '4'),
                _buildButton(180,
                    color: Colors.black, icon: FontAwesomeIcons.cat, id: '5'),
                _buildButton(225,
                    color: Colors.indigo, icon: FontAwesomeIcons.paw, id: '6'),
                _buildButton(270,
                    color: Colors.pink, icon: FontAwesomeIcons.bong, id: '7'),
                _buildButton(315,
                    color: Colors.yellow, icon: FontAwesomeIcons.bolt, id: '8'),
                Transform.scale(
                  scale: scale.value - 1.5,
                  child: FloatingActionButton(
                    child: const Icon(FontAwesomeIcons.bookOpen),
                    onPressed: () => _close(),
                    backgroundColor: Colors.red,
                  ),
                ),
                Transform.scale(
                  scale: scale.value,
                  child: FloatingActionButton(
                    child: const Icon(FontAwesomeIcons.bookOpen),
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
        onPressed: () => _close(id: id),
      ),
    );
  }

  _open() {
    controller.forward();
  }

  _close({String? id}) async {
    await controller.reverse();
    if (id != null) print(id);
  }
}
