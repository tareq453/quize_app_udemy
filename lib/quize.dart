import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:quize_app_udemy/question.dart';
import 'answer.dart';

class Quize extends StatelessWidget {
  final String questionText;
  final List<Map<String,Object>> answerList;
  final Function selectedHandler;
  Quize(this.questionText, this.answerList,this.selectedHandler);

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(questionText),
      ...answerList
          .map((answer) {
        return Answer(answer['text'],() => selectedHandler(answer['score']));
      })
    ]);
  }
}
