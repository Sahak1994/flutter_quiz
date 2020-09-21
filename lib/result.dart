import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function restartQuiz;

  Result(this.restartQuiz);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: restartQuiz,
        child: Text(
          'Restart the Quiz.',
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}