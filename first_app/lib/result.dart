import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 30) {
      resultText = '你選擇的選項分數太低囉';
    } else if (resultScore <= 50 && resultScore > 30) {
      resultText = '你選擇的選項分數介於50到30';
    } else if (resultScore <= 70 && resultScore > 50) {
      resultText = '你選擇的選項分數介於50到70';
    } else if (resultScore > 70) {
      resultText = '你選擇的選項分數超過70';
    } else {
      resultText = '太神啦';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('請重新填選'),
            //TextButton寫法
            //style: ButtonStyle(foregroundColor: MaterialStateProperty.all(Colors.blue)),
            textColor: Colors.pink,
          )
        ],
      ),
    );
  }
}
