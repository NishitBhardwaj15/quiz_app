import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  
  runApp(
     const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(254, 242, 147, 84),
        body: StartScreen()
      ),
    ),
  );
}
