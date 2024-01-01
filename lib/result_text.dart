import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultText extends StatelessWidget {
  const ResultText(this.count, {super.key});

  final int count;

  @override
  Widget build(context) {
    return Text(
      "Out of 6 questions you got $count correct!",
      style: GoogleFonts.montserrat(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold
      ),
      textAlign: TextAlign.center,
    );
  }
}
