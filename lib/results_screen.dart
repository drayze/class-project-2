import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List <String> chosenAnswers;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your Quiz Results.\nYou answered x of z questions correctly.',
              style: GoogleFonts.unkempt(fontSize: 25,
              fontWeight: FontWeight.bold, color: Colors.white,),),
            SizedBox(height: 30,),
            ListView(),
            SizedBox(height: 30,),
            TextButton(onPressed: (){
              
            }, child: Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}