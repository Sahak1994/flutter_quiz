import "package:flutter/material.dart";

// Widgets
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _questionIndex = 0;

  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snack', 'Elephant', 'Lion'], 
    },
    {
      'questionText': 'What\'s your favorite instructor?',
      'answers': ['Juriy', 'Max', 'John', 'Pete'],
    },
  ];

  void _answerQuestion() {
     setState(() => _questionIndex += 1);
  }

  void _restartQuiz() {
    setState(() => _questionIndex = 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Quiz'),
      ),
      body: _questionIndex < _questions.length 
        ? Quiz(
          questions: _questions,
          questionIndex: _questionIndex,
          answerQuestion: _answerQuestion
        )
        : Result(_restartQuiz)
    );
  }
}