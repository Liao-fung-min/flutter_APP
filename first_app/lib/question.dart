import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(26), //跟css的margin很像
      child: Text(
        questionText,
        style: TextStyle(
          color: Colors.green,
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
