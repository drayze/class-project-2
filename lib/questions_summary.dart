import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary(this.scoreData, {super.key});

  final List <Map<String, Object>> scoreData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: scoreData.map((data){
        return Row(children: [
          Text(((data['question_num'] as int) + 1).toString()),
          Expanded(
            child: Column(children: [
              Text(data['question'] as String),
              SizedBox(height: 5,),
              Text(data['correct_answer'] as String),
              Text(data['player_answer'] as String)
            ],),
          )
        ],);
      }).toList(),
    );
  }
}