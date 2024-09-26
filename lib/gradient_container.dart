import 'package:flutter/material.dart';
import 'package:flutter_create_dice/dice_roller.dart';
import 'dart:math'; // Importar para gerar cores aleatórias

class GradientContainer extends StatefulWidget {
  const GradientContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  GradientContainerState createState() => GradientContainerState(); // Tornar a classe pública
}

class GradientContainerState extends State<GradientContainer> { // Removido o underscore
  // Inicializamos duas variáveis para armazenar as cores de fundo do gradiente
  Color backgroundColor1 = Colors.red; 
  Color backgroundColor2 = Colors.blue; // Segunda cor para o gradiente

  // Função para mudar a cor de fundo do gradiente
  void changeBackgroundColor() {
    // Atualiza as cores do gradiente para novas cores aleatórias
    setState(() {
      backgroundColor1 = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
      backgroundColor2 = Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [backgroundColor1, backgroundColor2], // Usamos as novas cores para o gradiente
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: DiceRoller(onChangeBackgroundColor: changeBackgroundColor), // Passamos a função de mudança de cor
    );
  }
}

