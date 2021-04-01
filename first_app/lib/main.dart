import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

//另一種寫法
void main() => runApp(MyApp());
void btnClickEvent() {
  print('btnClickEvent...');
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: Text('flutter的顏色'),
          textTheme: TextTheme(
            headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
            headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
            bodyText2: TextStyle(fontSize: 60.0, fontFamily: 'Hind'),
          ),
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'images/stock.jpg',
                  // width: 300,
                  // height: 250,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '我是韭菜',
                      style: TextStyle(color: Colors.green, fontSize: 32.5),
                    ),
                    Icon(
                      Icons.ac_unit,
                      color: Colors.yellow,
                    ),
                  ],
                ),
                Text(
                  "上面字體顏色正確",
                  style: TextStyle(color: Colors.black26, fontSize: 20.5),
                ),
                // ElevatedButton(
                //   child: Text('按鈕'),
                //   style: ButtonStyle(shadowColor: Colors.green),
                //   onPressed: btnClickEvent,
                // ),
              ]),
        ),
      ),
    );
  }
}
