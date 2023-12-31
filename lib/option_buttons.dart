import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget{
  final String answer;

  const OptionButton(this.answer,this.changeQuestionNumber,{super.key});

  final void Function(String ans) changeQuestionNumber;

  @override
  Widget build(context){
    return Container(
      margin:const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 247, 151, 6),
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 50),
        ),
        onPressed:(){
          changeQuestionNumber(answer);
        }, 
        child: Text(answer,textAlign: TextAlign.center,)
        ),
    );
  }
}