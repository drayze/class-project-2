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

    return Container(
        height: 30,
        width: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(),
        child: Text((('question_num' as int) + 1).toString(), style: GoogleFonts.turretRoad(
    fontSize: 25, color: Colors.lightGreenAccent, backgroundColor: Colors.black45,
    ),));
  }
  
  
}