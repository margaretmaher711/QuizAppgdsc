// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:quiz_app_gdsc/QuizWindow.dart';

class LogIn extends StatelessWidget {

  void funco(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(QuizWind.routeName, arguments: {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('welcom'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'User Name'),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              child: Text('LogIn !'),
              onPressed: () => funco(context),
            )
          ],
        ),
      ),
    );
  }
}
