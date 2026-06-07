import 'package:class_project_2/data/questions.dart';
import 'package:class_project_2/questions_screen.dart';
import 'package:class_project_2/start_screen.dart';
import 'package:flutter/material.dart';
import 'package:class_project_2/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'startScreen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'QuestionsScreen';
    });
  }

  void chosenAnswer(String answer){
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'ResultsScreen';
      });
    }
  }

  void restartQuiz(){
    setState(() {
      selectedAnswers = [];
      activeScreen = 'QuestionsScreen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'QuestionsScreen') {
      screenWidget = QuestionsScreen(onSelectedAnswer: chosenAnswer);
    }

    if (activeScreen == 'ResultsScreen') {
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers);
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [ Colors.deepPurpleAccent, Colors.blue, Colors.lightBlue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),),
          child: screenWidget
        ),
      ),
    );

  }
}