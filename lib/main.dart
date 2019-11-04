import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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

  void answerButton() {
    setState(() {
      questionIndex++;
    });
    print(questionIndex);
  }

  var questions = ['Question 1 ?', 'Question 2 ?', 'Question 3 ?'];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[questionIndex]),
            Answer(answerButton, 'Answer 1'),
            Answer(answerButton, 'Answer 2'),
            Answer(answerButton, 'Answer 3'),
          ],
        ),
      ),
    );
  }
}
