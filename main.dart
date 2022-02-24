import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quiz_app_gdsc/Answer.dart';
import 'package:quiz_app_gdsc/QuizWindow.dart';
import 'Quistions.dart';
import 'Result.dart';
import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int quistionindex = 0;
  final quistionslist = [
    'What\'s your favorite color?',
    'What\'s your favorite drink?',
    'What\'s your favorite sport?',
    'What\'s your favorite movie?',
  ];

  final answersList = [
    ['green', 'red', 'blue'],
    ['tea', 'coffee', 'milk'],
    ['basketball', 'football', 'running'],
    ['vikings', 'La casa de babel', 'wonder'],
  ];

  void ans() {
    if (quistionindex < quistionslist.length) {
      Result();
    }
    setState(() {
      quistionindex++;
    });
    print(quistionindex);
    print("answer chosen");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text(
      //       "Quiz Appp",
      //       style: TextStyle(fontSize: 20.0),
      //     ),
      //  ),
      //   body: Container(
      //     child: quistionindex < quistionslist.length
      //         ? QuizWind(quistionslist, answersList, quistionindex, ans)
      //         : Result(),
      //   ),
     // ),
      routes: {
        '/': (context) => LogIn(),
        QuizWind.routeName: (context) =>
            QuizWind(quistionslist, answersList, quistionindex, ans),
      },
    );
  }
}
