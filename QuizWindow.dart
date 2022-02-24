//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:quiz_app_gdsc/Answer.dart';
import 'package:quiz_app_gdsc/Quistions.dart';
import 'package:quiz_app_gdsc/Result.dart';
import 'package:quiz_app_gdsc/login.dart';

class QuizWind extends StatefulWidget {
  static const routeName = 'QuizWind';

  final answersList;
  final int quistionindex;
  final Function() ans;
  final quistionslist;

  QuizWind(this.quistionslist, this.answersList, this.quistionindex, this.ans);

  @override
  State<QuizWind> createState() => _QuizWindState();
}

class _QuizWindState extends State<QuizWind> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "Quiz Appp",
              style: TextStyle(fontSize: 20.0),
            ),
         ),
      body: SingleChildScrollView(
        child: widget.quistionindex < widget.quistionslist.length
            ? Column(
                children: [
                  Container(
                      height: 90,
                      child: Quistions(
                          widget.quistionindex, widget.quistionslist)),
                  ...(widget.answersList[widget.quistionindex] as List<String>)
                      .map((answerr) {
                    return Container(
                        height: 90,
                        child:
                            Answers(widget.ans, widget.quistionindex, answerr));
                  }).toList(),
                ],
              )
            : Result(),
      ),
    );
  }
}
