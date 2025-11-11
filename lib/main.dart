import 'package:flutter/material.dart';
import 'package:advanced_basics_quiz_app/homepage.dart';

// Gradient variables
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

void main() {
  runApp(
    MaterialApp(
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
    ),
  );
}
