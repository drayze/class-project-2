import 'package:flutter/material.dart';
import 'package:class_project_2/answer_button.dart';

class QuestionsScreen  extends StatefulWidget {
  const QuestionsScreen({super.key});


  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}
class _QuestionsScreen extends State<QuestionsScreen>{
    @override
  Widget build(BuildContext context){

  return SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      const Text('test', style: TextStyle(fontSize: 25,
          fontWeight: FontWeight.bold, color: Colors.white),),
        SizedBox(height: 30,),
        AnswerButton(answerText: 'test', onTap: (){}),
        AnswerButton(answerText: 'test', onTap: (){}),
        AnswerButton(answerText: 'test', onTap: (){}),
        AnswerButton(answerText: 'test', onTap: (){}),
      ],),
  );
  }
}

