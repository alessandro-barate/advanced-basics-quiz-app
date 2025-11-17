// import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText,
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
      borderRadius: BorderRadius.circular(40),
      color: Color.fromARGB(218, 255, 255, 255),
      onPressed: onTap,
      child: Text(
        answerText,
        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 16),
      ),
    );
  }
}
