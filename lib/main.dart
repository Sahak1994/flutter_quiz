import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Quiz(),
    );
  }
}

class Quiz extends StatelessWidget {
  int _questionIndex = 0;

  List<String> _questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
    'What\'s your favorite instructor?'
  ];

  void _answerQuestion() {
    _questionIndex += 1;
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Quiz'),
      ),
      body: Column(
        children: <Widget>[
          Text(_questions[_questionIndex]),
          RaisedButton(
            child: Text('Answer 1'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 3'),
            onPressed: _answerQuestion,
          ),
        ],
      ),
    );
  }
}