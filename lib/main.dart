import 'package:flutter/material.dart';
import 'package:flutter_animations/custom_animation_demo.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Animations',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new CustomAnimationDemo(),
      debugShowCheckedModeBanner: false,
    );
  }
}