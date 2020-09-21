import 'package:flutter/material.dart';

enum A {
  asd,
}

class Answer extends StatelessWidget {
  final String answerText;
  final Function answerQuestion;

  const Answer({
    @required this.answerText,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child:  RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: answerQuestion,
      ),
    );
  }
}