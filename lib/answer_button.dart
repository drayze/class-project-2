import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton({super.key});

  @override
  Widget build(BuildContext context){
    return ElevatedButton(onPressed: (){},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purpleAccent,),
        child: const Text('test'));
  }
}
