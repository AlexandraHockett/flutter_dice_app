import 'package:flutter/material.dart';
import 'package:flutter_create_dice/gradient_container.dart';

void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          [Color.fromARGB(255, 100, 4, 4), Color.fromARGB(255, 226, 12, 12)],
        ),
      ),
    ),
  );
}



