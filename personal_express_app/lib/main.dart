import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transcation = [
    Transaction(
      id: 'tl',
      title: '衣服',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: '鞋子',
      amount: 57.25,
      date: DateTime.now(),
    ),
  ];
  // String titleInput; //名稱輸入
  // String amountInput; //價錢輸入
  final titlController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.orange,
              child: Text('Chart!'),
              elevation: 20,
            ),
          ),
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: '品項'),
                    controller: titlController,
                    //onChanged: (val) => amountInput = val,
                    //另一種寫法
                    // onChanged: (val) {
                    //   titleInput = val;
                    // },
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: '價錢'),
                    controller: amountController,
                  ),
                  FlatButton(
                    onPressed: () {
                      print(titlController.text);
                      print(amountController.text);
                    },
                    child: Text('增加項目'),
                    textColor: Colors.purple,
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: transcation.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    //針對container裡面的字做css的設計
                    Container(
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.pink, width: 1),
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '\$${tx.amount}', //錢字號寫法
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),
                    Column(
                      //向左靠齊
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          tx.title,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          DateFormat.yMMMMd().format(tx.date), //日期寫法
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
