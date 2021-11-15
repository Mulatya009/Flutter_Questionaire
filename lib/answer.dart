import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final answerHandler;
  final answerText;

  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        color: Colors.black,
        child: ElevatedButton(
          child: Text(answerText),
          onPressed: answerHandler,
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
          ),
        ),
      ),
    );
  }
}
