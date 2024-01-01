import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_data.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/result_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _Quiz();
  }
}

class _Quiz extends State<Quiz>{
  List<String> selectedAns = [];
  Widget? activeScreen;

  @override
  void initState(){
    activeScreen = StartScreen(changeScreen);
    super.initState();
  }

  void restartQuiz(){
    selectedAns = [];
    setState(() {
      activeScreen = StartScreen(changeScreen);
    });
  }

  void setSelectedAns(String ans){
    selectedAns.add(ans);
    if(selectedAns.length == questions.length){
      setState(() {
        activeScreen = ResultScreen(selectedAns,restartQuiz);
      });
    }
  }

  void changeScreen(){
    setState(() {
      activeScreen = Questions(setSelectedAns);
    });
  }


  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(253, 243, 168, 119),
        body: activeScreen
      ),
    );
  }
}