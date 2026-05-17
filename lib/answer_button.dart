import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton(this.answerText, {super.key});

  final String answerText;

  @override
  Widget build(BuildContext context){
    return ElevatedButton(onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purpleAccent,),
        child: Text(answerText));
  }
}
