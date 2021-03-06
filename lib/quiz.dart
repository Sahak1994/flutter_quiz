import 'package:flutter/material.dart';

import 'package:flutter_complete_guide/question.dart';
import 'package:flutter_complete_guide/answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  const Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {
          return  Answer(
            answerText: answer['text'],
            answerQuestion: () => answerQuestion(answer['score']),
          );
        }).toList()
      ]
    );
  }
}
