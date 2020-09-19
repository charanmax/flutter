import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function handleClick;
  final String answer;
  @override
  Answers(this.handleClick, this.answer);
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.cyan,
        elevation: 5,
        onPressed: handleClick,
        child: Text(
          answer,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
