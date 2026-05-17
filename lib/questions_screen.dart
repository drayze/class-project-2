import 'package:flutter/material.dart';
import 'package:class_project_2/answer_button.dart';
import 'package:class_project_2/data/questions.dart';

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

      final currentQuestion = questions[0];

  return SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       Text(currentQuestion.test, style: TextStyle(fontSize: 25,
          fontWeight: FontWeight.bold, color: Colors.white),),
        SizedBox(height: 30,),
        AnswerButton(answerText: currentQuestion.answers[0], onTap: (){}),
        SizedBox(height: 5,),
        AnswerButton(answerText: currentQuestion.answers[1], onTap: (){}),
        SizedBox(height: 5,),
        AnswerButton(answerText: currentQuestion.answers[2], onTap: (){}),
        SizedBox(height: 5,),
        AnswerButton(answerText: currentQuestion.answers[3], onTap: (){}),
      ],),
  );
  }
}

