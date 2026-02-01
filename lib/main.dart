import 'package:flutter/material.dart';
import 'package:class_project_2/start_screen.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [ Colors.deepPurpleAccent, Colors.blue, ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
                ),),
          child: const StartScreen(),
          ),
        ),
      ),);
  }