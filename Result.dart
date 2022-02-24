//import 'dart:html';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Done',
        style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
      ),
    );
  }
}
