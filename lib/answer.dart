import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final answerHandler;
  final answerText;

  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: answerHandler,
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
      ),
    );
  }
}
