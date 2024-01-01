import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions_data.dart';
import 'package:quiz_app/result.dart';
import 'package:quiz_app/result_text.dart';

class ResultScreen extends StatelessWidget {
  final List<String> selectedAns;
  final void Function() restartQuiz;
  
  const ResultScreen(this.selectedAns, this.restartQuiz, {super.key});

  List<Map<String, Object>> getSummary() {
    List<Map<String, Object>> details = [];

    for (var i = 0; i < selectedAns.length; i++) {
      details.add({
        'questionNumber': i,
        'question': questions[i].question,
        'correctAnswer': questions[i].options[0],
        'userAnswer': selectedAns[i]
      });
    }

    return details;
  }

  int getCorrectQuestionNumber() {
    int count = 0;

    for (var i = 0; i < selectedAns.length; i++) {
      if (selectedAns[i] == questions[i].options[0]) {
        count++;
      }
    }

    return count;
  }

  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ResultText(getCorrectQuestionNumber()),
            const SizedBox(height: 30),
            Result(getSummary()),
            const SizedBox(height: 30),
            OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white
                  ),
                  onPressed: restartQuiz,
                  icon: const Icon(Icons.restart_alt_rounded), 
                  label: const Text("Restart quiz")
                  ),
          ],
        ),
      ),
    );
  }
}
