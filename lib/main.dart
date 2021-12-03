// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:disenos/screens/basic_design.dart';
import 'package:disenos/screens/home_screen.dart';
import 'package:disenos/screens/scroll_design.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      title: 'Material App',
      initialRoute: 'home_design',
      routes: {
        'basic_design': (_) => BasicDesignScreen(),
        'scroll_design': (_) => ScrollScreen(),
        'home_design': (_) => HomeScreen(),
      },
    );
  }
}
