import 'package:advanced_basics_quiz_app/questions_screen.dart';
import 'package:flutter/material.dart';
import 'package:advanced_basics_quiz_app/homepage.dart';

// Gradient variables
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'homepage';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = Homepage(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(222, 236, 145, 0),
                Color.fromARGB(210, 35, 35, 35),
              ],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
