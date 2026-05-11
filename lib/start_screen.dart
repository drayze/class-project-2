import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(void Function() switchScreen, {super.key, required this.startQuiz});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 300,),
        const SizedBox(height: 80,),
        Text('Learn Flutter the fun way!', style: TextStyle(color: Colors.white, fontSize: 24),),
        const SizedBox(height: 30,),
        OutlinedButton.icon(style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          onPressed: startQuiz,
          icon: const Icon(Icons.play_arrow),
          label: const Text('Start Quiz'),),
      ],
    ),
    );
  }
}