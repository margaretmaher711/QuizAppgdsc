import 'package:flutter/material.dart';

class Quistions extends StatelessWidget {
  int indx;
  final quistionslist;

  Quistions(this.indx, this.quistionslist);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20.0),
        width: double.infinity,
        height: double.infinity,
        child: Text(
          quistionslist[indx],
          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
