import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String question;
  @override
  Questions(this.question);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(9),
      child: Text(
        question,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 28,
        ),
      ),
    );
  }
}
