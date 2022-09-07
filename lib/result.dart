import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function resetHandler;
  final int _score;
  Result(this._score,this.resetHandler);

  String get resultText {
    String text;
    if (_score > 15) {
      text = "Good luck";
    } else if (_score > 10) {
      text = "Good job bigger than 10";
    } else if (_score > 8) {
      text = "Biggerr than 8";
    } else {
      text = "Not that bad";
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultText,
            style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
          ),
          TextButton(onPressed: resetHandler, child: Text("Reset Quiz!!"),style: TextButton.styleFrom(primary: Colors.pink),)
        ],
      ),
    );
  }
}
