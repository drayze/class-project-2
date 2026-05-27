import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary(this.scoreData, {super.key});

  final List <Map<String, Object>> scoreData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: scoreData.map((data){
        return Row(children: [],);
      }).toList(),
    );
  }
}