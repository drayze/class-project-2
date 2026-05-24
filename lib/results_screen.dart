import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your Quiz Results', style: GoogleFonts.unkempt(fontSize: 25,
              fontWeight: FontWeight.bold, color: Colors.white,),),
          ],
        ),
      ),
    );
  }
}