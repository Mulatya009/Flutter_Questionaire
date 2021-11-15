import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final questionIndex;
  final getAnswer;
  final questions;

  Quiz(
      {@required this.getAnswer,
      @required this.questionIndex,
      @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
        ),
        ...(questions[questionIndex]['possibleAnsers'] as List<String>)
            .map((ans) {
          return Answer(getAnswer, ans);
        }).toList()
      ],
    );
  }
}
