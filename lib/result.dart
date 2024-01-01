import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/helper.dart';

class Result extends StatelessWidget {
  const Result(this.details, {super.key});

  final List<Map<String, Object>> details;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: [
          ...details.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [                
                Helper(((data['questionNumber'] as int) + 1).toString(),),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(  
                    crossAxisAlignment: CrossAxisAlignment.start,                 
                    children: [
                      Text(data['question'].toString(),
                      style:GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                      )
                      ),
                      Text(data['correctAnswer'].toString(),
                      style:GoogleFonts.montserrat(
                        color: Colors.green.shade600,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      )),
                      Text(data['userAnswer'].toString(),
                      style:GoogleFonts.montserrat(
                        color: Colors.red.shade600,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      )),
                      const SizedBox(height: 20),
                    ],
                  ),
                )
              ],
            );
          }),
        ]),
      ),
    );
  }
}
