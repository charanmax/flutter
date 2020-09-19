import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/Questions.dart';
import 'package:flutterapp/answers.dart';
import 'package:flutterapp/Constants.dart';
import 'package:flutterapp/QuizStart.dart';
import 'package:flutterapp/QuizEnd.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;
  void handleEvent(int Score) {
    setState(() {
      questionIndex += 1;
    });
    totalScore += Score;
    print(totalScore);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 5,
          title: Text('Quizzer'),
          centerTitle: true,
        ),
        body: questionIndex < Quiz.questionsList.length
            ? QuizStart(questionIndex, handleEvent)
            : QuizEnd(),
      ),
    );
  }
}
