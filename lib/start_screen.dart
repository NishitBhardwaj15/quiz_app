import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{
  void Function() changeScreen;

  StartScreen(this.changeScreen,{super.key});

  @override
  Widget build(context){
    return Container(
          child:Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  color:const Color.fromARGB(142, 244, 236, 236),
                  width: 250,
                  ),
                const SizedBox(height: 40),
                const Text("Learn Flutter the fun way",
                  style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold), 
                ),
                const SizedBox(height: 20),
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white
                  ),
                  onPressed: changeScreen,
                  icon: const Icon(Icons.arrow_circle_right_sharp), 
                  label: const Text("Start quiz")
                  )
              ],
            ),
          ),
        );
  }


}