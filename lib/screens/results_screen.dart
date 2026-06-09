import 'package:class_project_2/result/questions_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:class_project_2/data/questions.dart';

class ResultsScreen extends StatelessWidget{
  const ResultsScreen({super.key,
    required this.chosenAnswers,
    required this.restartQuiz});

  final List <String> chosenAnswers;
  final void Function () restartQuiz;

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
    final results = getResults();
    final totalPossibleQuestions = questions.length;
    final correctTotal = results.where((data){
      return data['player_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
      child: Container(
          margin: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Your Quiz Results.\nYou answered $correctTotal of '
                    '$totalPossibleQuestions questions correctly.',
                  style: GoogleFonts.unkempt(fontSize: 25,
                  fontWeight: FontWeight.bold, color: Colors.white,),
                  textAlign: TextAlign.center,),
                SizedBox(height: 30,),
                QuestionsSummary(results),
                SizedBox(height: 30,),
                TextButton.icon(onPressed: restartQuiz,
                  icon: Icon(Icons.restart_alt, color: Colors.white,),
                    label: Text('Restart Quiz', style: GoogleFonts.courierPrime(
                      fontSize: 18, color: Colors.white
                    ),),)
              ],
                  ),
          ),);
  }
}