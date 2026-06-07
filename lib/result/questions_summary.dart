import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:class_project_2/result/players_score.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary(this.scoreData, {super.key});

  final List <Map<String, Object>> scoreData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: scoreData.map((data){
        return Row(children: [

          Expanded(
            child: Column(children: [
              Text(data['question_text'] as String, style: GoogleFonts.turretRoad(
                fontSize: 22, color: Colors.lightGreenAccent,
              ),),
              SizedBox(height: 5,),
              Text(data['correct_answer'] as String, style: GoogleFonts.electrolize(
                fontSize: 21, color: Colors.black54,
              ),),
              Text(data['player_answer'] as String, style: GoogleFonts.iceberg(
                fontSize: 20, color: Colors.orangeAccent
              ),)
            ],),
          ),
        ],);
      }).toList(),
    );
  }
}