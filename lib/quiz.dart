import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _Quiz();
  }
}

class _Quiz extends State<Quiz>{
  Widget? activeScreen;

  @override
  void initState(){
    activeScreen = StartScreen(changeScreen);
    super.initState();
  }

  void changeScreen(){
    setState(() {
      print("set state called");
      activeScreen = const Questions();
    });
  }

  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(254, 242, 147, 84),
        body: activeScreen
      ),
    );
  }
}