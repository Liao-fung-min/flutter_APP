import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

// void main() {
//   runApp(MyApp());
// }

//另一種寫法
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  //設定方法
  //不能寫在@override裡面不然會吃不到這個動作
  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "甚麼是你最喜歡的顏色",
      "甚麼是你最喜歡的動物",
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text(questions[_questionIndex]),
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 60.0, fontFamily: 'Hind'),
          ),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            Answer(),
            Answer(),
            Answer(),
          ],
        ),
      ),
    );
  }
}
