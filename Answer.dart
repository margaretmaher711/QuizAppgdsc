import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function() x;
  final hihlistindex;
  final txt;

  Answers(this.x, this.hihlistindex, this.txt);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(20.0),
            child: ElevatedButton(
              child: Text(txt),
              onPressed: x,
            ),
          ),
        ],
      ),
    );
  }
}
