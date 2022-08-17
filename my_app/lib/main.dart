// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import './question.dart ';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < questions.length) {
      print('we have more questions');
    }
    ; 
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_questionIndex);
  }

  Widget build(BuildContext context) {
    final questions = const [
      {
        'questionText': 'what is your favourite color?',
        'Answers': ['blue', 'black', 'red', 'yellow'],
      },
      {
        'questionText': 'what is your favourite animal?',
        'Answers': ['Lion', 'rabbit', 'tiger', 'snake'],
      },
      {
        'questionText': 'who is your favourite iinstructor?',
        'Answers': ['danial', 'Max', 'Rana', 'Ali '],
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My first app'),
          ),
          body: Column(
            children: [
              questions(
                questions[_questionIndex]['questionText'] as String,
              ),
              ...(questions[_questionIndex]['Answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}
