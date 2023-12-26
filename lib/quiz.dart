import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _Quiz();
  }
}

class _Quiz extends State<Quiz>{
  @override
  Widget build(context){
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(254, 242, 147, 84),
        body: StartScreen()
      ),
    );
  }
}