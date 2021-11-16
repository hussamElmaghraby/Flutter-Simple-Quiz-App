import 'package:flutter/material.dart';
import './Result.dart';
import './Quiz.dart';
import './Questions.dart';
import './Answer.dart';

void main() => runApp(MyApp());

final _questions = const [
  {
    'questionText': 'What is your favourite color?',
    'answers': [
      {'text': 'Black', 'score': 10},
      {'text': 'Red', 'score': 5},
      {'text': 'Green', 'score': 3},
      {'text': 'White', 'score': 1}
    ]
  },
  {
    'questionText': 'What is your favourite animal?',
    'answers': [
      {'text': 'Rabbit', 'score': 1},
      {'text': 'Snake', 'score': 10},
      {'text': 'Elephant', 'score': 8},
      {'text': 'Lion', 'score': 3}
    ]
  },
  {
    'questionText': 'Who is your favourite instructor',
    'answers': [
      {'text': 'Max', 'score': 10},
      {'text': 'Max', 'score': 10},
      {'text': 'Max', 'score': 10},
      {'text': 'Max', 'score': 10}
    ]
  }
];

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  // Context : Porvide Metadata about The Widget.
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text("This is a new app ")),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore, _resetQuiz)),
    );
  }
}
