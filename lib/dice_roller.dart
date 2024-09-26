import 'package:flutter/material.dart';
import 'package:flutter_create_dice/styled_text.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  final VoidCallback onChangeBackgroundColor; // Adiciona um parâmetro de callback

  const DiceRoller({super.key, required this.onChangeBackgroundColor}); // Recebe a função

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    var roll = Random().nextInt(6) + 1;

    setState(() {
      activeDiceImage = 'assets/images/dice-$roll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
          style: TextButton.styleFrom(padding: const EdgeInsets.only(top: 20)),
          onPressed: rollDice,
          child: const StyledText('RODA O DADO'),
        ),
        TextButton(
          style: TextButton.styleFrom(padding: const EdgeInsets.only(top: 20)),
          onPressed: widget.onChangeBackgroundColor, // Chama a função
          child: const StyledText('MUDA O FUNDO'),
        ),
      ],
    );
  }
}

