import 'package:flutter/material.dart';
import 'package:flutterapp/Constants.dart';
import 'package:flutterapp/Questions.dart';
import 'package:flutterapp/answers.dart';

class QuizStart extends StatelessWidget {
  final Function handleEvent;
  final int questionIndex;
  QuizStart(this.questionIndex, this.handleEvent);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/black-felt.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Questions(Quiz.questionsList[questionIndex]['question']),
        ...(Quiz.questionsList[questionIndex]['answers']
                as List<Map<String, Object>>)
            .map((answer) {
          return Answers(() => handleEvent(answer['score']), answer['text']);
        })
      ],
    );
  }
}
