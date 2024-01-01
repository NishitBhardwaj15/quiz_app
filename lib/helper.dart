import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Helper extends StatelessWidget{
  const Helper(this.questionNumber,{super.key});

  final String questionNumber;

  @override
  Widget build(context){
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.deepOrange
      ),
      padding: const EdgeInsets.all(12),
      child: Text(
        questionNumber,
        style: GoogleFonts.montserrat(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
        ),
    );
  }
}