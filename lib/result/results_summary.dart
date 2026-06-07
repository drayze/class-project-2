import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:class_project_2/result/players_score.dart';

class ResultsSummary extends StatelessWidget{
  const ResultsSummary(
      this.dataForItem,
      {super.key
});

  final Map <String, Object> dataForItem;

  @override
  Widget build(BuildContext context) {
    final isCorrect = dataForItem['player_answer'] ==
        dataForItem['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [ PlayersScore(isCorrect: isCorrect,
          questionNum: dataForItem['question_num'] as int),
      Expanded(
        child: Column(children: [
          Text(dataForItem['question_text'] as String, style:
          GoogleFonts.turretRoad(
            fontSize: 22, color: Colors.lightGreenAccent,
          ),),
          SizedBox(height: 5,),
          Text(dataForItem['correct_answer'] as String, style:
          GoogleFonts.electrolize(
            fontSize: 21, color: Colors.black54,
          ),),
          Text(dataForItem['player_answer'] as String, style:
          GoogleFonts.iceberg(
              fontSize: 20, color: Colors.orangeAccent
          ),)
        ],),
      ),
    ],);
  }
}