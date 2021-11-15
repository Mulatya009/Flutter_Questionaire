import 'package:flutter/material.dart';
import 'package:flutter_course/quiz.dart';

import './question.dart';
import './answer.dart';
import './results.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const questions = [
    {
      'questionText': 'What\'s Your Favourite Football Club?',
      'possibleAnsers': [
        'Chelsea',
        'Man United',
        'Man City',
        'Arsenal',
        'Liverpool'
      ],
    },
    {
      'questionText': 'What\'s The clubs main colour?',
      'possibleAnsers': ['Blue', 'Red', 'Sky Blue', 'None'],
    },
    {
      'questionText': 'Who\'s The Main Player?',
      'possibleAnsers': [
        'Mendy',
        'B. Fernandes',
        'Kelvin Debryne',
        'None',
        'Salah'
      ],
    },
    {
      'questionText': 'What\'s The owners name?',
      'possibleAnsers': [
        'Roman ',
        'Not Sure',
        'I Don\'t Know',
      ],
    }
  ];
  var _questionIndex = 0;

  void getAnswer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Container(
          width: double.infinity,
          child: Text(
            "Flutter questionaire App",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
        )),
        body: _questionIndex < questions.length
            ? Quiz(
                getAnswer: getAnswer,
                questionIndex: _questionIndex,
                questions: questions,
              )
            : Results(),
      ),
    );
  }
}
