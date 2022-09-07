import 'dart:collection';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quize_app_udemy/quize.dart';
import 'package:quize_app_udemy/result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questionAnswerMap = const [
    {
      "questionText": 'What\'s your favourit color?',
      "answer": [
        {"text": "Red", "score": 10},
        {"text": "Blue", "score": 8},
        {"text": "Green", "score": 5},
        {"text": "Yellow", "score": 2}
      ]
    },
    {
      "questionText": 'What\'s your favourit animal?',
      "answer": [
        {"text": "Cat", "score": 2},
        {"text": "Dog", "score": 5},
        {"text": "Elephaent", "score": 8},
        {"text": "Shark", "score": 10}
      ]
    },
    {
      "questionText": 'What\'s your favourit os?',
      "answer": [
        {"text": "mac", "score": 8},
        {"text": "windows", "score": 2},
        {"text": "linux", "score": 10}
      ]
    }
  ];

  var _questionIndex = 0;
  var _score = 0;

  MyAppState() {
    print("Hello");
  }

  @override
  Widget build(BuildContext context) {
    print("rebuild");

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My Title")),
        body: _questionIndex < questionAnswerMap.length
            ? Quize(
                questionAnswerMap[_questionIndex]['questionText'],
                (questionAnswerMap[_questionIndex]['answer']
                    as List<Map<String, Object>>),
                _answerQuestion)
            : Result(_score,_resetQuize),
      ),
    );
  }

  void _answerQuestion(int score) {
    _score += score;
    print("score is " + _score.toString());
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  void _resetQuize() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }
}
