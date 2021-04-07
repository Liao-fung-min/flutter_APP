import 'package:first_app/quize.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

import './quize.dart';

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
  final _questions = const [
    {
      'questionText': '甚麼是你最喜歡的顏色',
      'answers': [
        {'text': '黑色', 'score': 1},
        {'text': '紅色', 'score': 2},
        {'text': '白色', 'score': 3},
        {'text': '藍色', 'score': 4}
      ]
    },
    {
      'questionText': '甚麼是你最喜歡的動物',
      'answers': [
        {'text': '大象', 'score': 10},
        {'text': '猴子', 'score': 20},
        {'text': '猩猩', 'score': 30},
        {'text': '哥吉拉', 'score': 40}
      ]
    },
    {
      'questionText': '甚麼是你最喜歡程式語言',
      'answers': [
        {'text': 'C#', 'score': 10},
        {'text': 'JAVA', 'score': 20},
        {'text': 'PHP', 'score': 30},
        {'text': 'JAVASCRIPT', 'score': 40}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  //設定方法

  void _resetQuize() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      print('我們有更多的選項');
    } else {
      print('你沒有更多選項');
    }

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quize(
                //去宣告另一個變數名稱
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuize),
      ),
    );
  }
}
