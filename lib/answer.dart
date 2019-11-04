import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selector;
  final String answerName;

  Answer(this.selector, this.answerName);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(2),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerName),
        onPressed: selector,
      ),
    );
  }
}
