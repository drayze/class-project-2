import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    final questionIndex = questionNum + 1;
    return Container(
        height: 30,
        width: 30,
        padding: EdgeInsets.all(5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: isCorrect
              ? Colors.greenAccent
              : Colors.deepOrangeAccent,
          borderRadius: BorderRadius.all(Radius.circular(45.0)),
        ),
        child: Text(questionIndex.toString(),
          style: GoogleFonts.turretRoad(
          fontSize: 25, fontWeight: FontWeight.bold,
            color: Colors.black,
    ),));
  }
  
  
}