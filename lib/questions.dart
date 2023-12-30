import 'package:flutter/material.dart';
import 'package:quiz_app/option_buttons.dart';
import 'package:quiz_app/data/questions_data.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget {
  const Questions(this.setSelectedAns,{super.key});

  final void Function(String ans) setSelectedAns;

  @override
  State<Questions> createState() {
    return _Questions();
  }
}

class _Questions extends State<Questions> {
  final questionsList = questions;

  var currentQuestionNumber = 0;

  void changeQuestionNumber(String ans){
    setState(() {
      currentQuestionNumber++;
    });

    widget.setSelectedAns(ans);
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
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
              // style: const TextStyle(
              //   color: Colors.white,
              //   fontSize: 18,
              //   fontWeight: FontWeight.bold,
              //   ),
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
