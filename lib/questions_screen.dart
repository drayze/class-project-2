import 'package:flutter/material.dart';
import 'package:class_project_2/answer_button.dart';
import 'package:class_project_2/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen  extends StatefulWidget {
  const QuestionsScreen({super.key});


  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}
class _QuestionsScreen extends State<QuestionsScreen>{
  var currentQuestionIndex = 0;

  void answerQuestion(){
    setState(() {
      currentQuestionIndex++;
    });
  }

    @override
  Widget build(BuildContext context){

      final currentQuestion = questions[currentQuestionIndex];

  return SizedBox(
    width: double.infinity,
    height: double.infinity,
    child: Container(
      margin: EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         Text(currentQuestion.test, style: GoogleFonts.unkempt( fontSize: 25,
            fontWeight: FontWeight.bold, color: Colors.white,),
           textAlign: TextAlign.center,),
          SizedBox(height: 30,),
          ...currentQuestion.getShuffledAnswers().map((item) {
            return AnswerButton(answerText: item, onTap: answerQuestion);
          }),
          ],),
    ),
  );
  }
}

