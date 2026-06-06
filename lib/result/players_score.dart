import 'package:flutter/material.dart';

class PlayersScore extends StatelessWidget{
  const PlayersScore({
    super.key,
    required this.isCorrect,
    required this.questionNum
});

  final bool isCorrect;
  final int questionNum;

  @override
  Widget build(BuildContext context) {

    return Container(
        height: 30,
        width: 30,
        alignment: Alignment.center,
        decoration: DecoratedBox(decoration: decoration),
        child: Text(data));
  }
  
  
}