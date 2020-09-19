import 'package:flutter/material.dart';

class QuizEnd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(
        child: Text(
          'You completed the quiz',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 28,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
