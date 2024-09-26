import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key}); // Construtor que recebe o texto

  final String text; // Declaração de uma variável para guardar o texto

  @override
  Widget build(BuildContext context) {
    return Text(
      text, // Usar a variável `text` aqui
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
