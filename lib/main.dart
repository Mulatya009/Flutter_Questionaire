import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void getAnswer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Course"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['possibleAnsers'] as List<String>)
                .map((ans) {
              return Answer(getAnswer, ans);
            }),
          ],
        ),
      ),
    );
  }
}
