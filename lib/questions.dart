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

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            questionsList[0].question,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
              ),
            ),
          const SizedBox(height: 30),
          ...questionsList[0].options.map((item){
            return OptionButton(item);
          })
        ],
      ),
    );
  }
}
