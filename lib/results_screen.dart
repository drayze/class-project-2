import 'package:class_project_2/questions_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:class_project_2/data/questions.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List <String> chosenAnswers;

  List <Map<String, Object>> getResults () {
    final List <Map<String, Object>> playerScore = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      playerScore.add({
        'question_num': i,
        'question_text': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'player_answer': chosenAnswers[i],
      });
    }

    return playerScore;
  }

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
            QuestionsSummary(getResults()),
            SizedBox(height: 30,),
            TextButton(onPressed: (){
              
            }, child: Text('Restart Quiz'))
          ],
        ),
      ),
    );
  }
}