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
  int _questionIndex = 0;

  void _answerButton() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  var questions = [
    {
      'question': 'What\'s your fav color ?',
      'answer': ['red', 'black', 'white', 'green']
    },
    {
      'question': 'What\'s your fav animal ?',
      'answer': ['dog', 'cat', 'rabbit', 'lion']
    },
    {
      'question': 'What\'s your fav flag ?',
      'answer': ['India', 'USA', 'UK', 'Russia']
    },
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]['question']),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((answer) {
              return Answer(_answerButton, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
