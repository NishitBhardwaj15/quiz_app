import 'package:flutter/material.dart';

void main() {
  void clickHandler(){}

  runApp(
     MaterialApp(
      home: Scaffold(
        backgroundColor:const Color.fromARGB(254, 242, 147, 84),
        body: Container(
          child:Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/quiz-logo.png'),
                const SizedBox(height: 40),
                const Text("Learn Flutter the fun way",
                  style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold), 
                ),
                const SizedBox(height: 20),
                TextButton(
                  onPressed:clickHandler,
                  style: TextButton.styleFrom(backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Start Quiz")
                )
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
