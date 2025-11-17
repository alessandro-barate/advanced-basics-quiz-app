import 'package:advanced_basics_quiz_app/answer_button.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics_quiz_app/homepage.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  dynamic activeScreen;

  // void goBackScreen() {
  //   setState(() {
  //     activeScreen = const Homepage();
  //   });
  // }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The question...'),
          const SizedBox(height: 30),
          AnswerButton(onTap: () {}, answerText: 'Answer text...'),
          AnswerButton('Answer text...'),
          AnswerButton('Answer text...'),
          AnswerButton('Answer text...'),
          OutlinedButton.icon(
            onPressed: () {
              // goBackScreen();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(218, 255, 255, 255),
            ),
            icon: Icon(Icons.arrow_circle_left_outlined, size: 20),
            label: const Text('Go back'),
          ),
        ],
      ),
    );
  }
}
