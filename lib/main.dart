import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex = 0;

  void answerButton(){
    setState(() {
     questionIndex++; 
    });
    print(questionIndex);
  }
  var questions = ['Question 1 ?', 'Question 2', 'Question 3'];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerButton,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
