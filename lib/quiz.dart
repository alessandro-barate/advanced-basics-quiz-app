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
  @override
  Widget build(context) {
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
          child: const Homepage(),
        ),
      ),
    );
  }
}
