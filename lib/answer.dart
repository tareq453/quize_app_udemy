import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectedHandler;
  final String buttonText;

  Answer(this.buttonText,this.selectedHandler);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 20,right: 20,top: 5,bottom: 5),
      child: ElevatedButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
        child: Text(buttonText),
        onPressed: selectedHandler,
      ),
    );
  }
}
