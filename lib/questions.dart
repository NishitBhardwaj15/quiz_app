import 'package:flutter/material.dart';
import 'package:quiz_app/option_buttons.dart';
import 'package:quiz_app/data/questions_data.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() {
    return _Questions();
  }
}

class _Questions extends State<Questions> {
  final questionsList = questions;

  var currentQuestionNumber = 0;

  void changeQuestionNumber(){
    setState(() {
      currentQuestionNumber++;
    });
  }

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              questionsList[currentQuestionNumber].question,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                ),
              textAlign: TextAlign.center,
              ),
            const SizedBox(height: 30),
            ...questionsList[currentQuestionNumber].getShuffleList().map((item){
              return OptionButton(item,changeQuestionNumber);
            })
          ],
        ),
      ),
    );
  }
}
