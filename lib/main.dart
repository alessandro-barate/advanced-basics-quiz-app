import 'package:flutter/material.dart';
import 'package:advanced_basics_quiz_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(222, 236, 145, 0),
            Color.fromARGB(210, 35, 35, 35),
          ],
        ),
      ),
    ),
  );
}
