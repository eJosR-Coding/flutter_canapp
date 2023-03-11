import 'dart:math';
import 'package:flutter/material.dart';

class TipOfTheDay extends StatelessWidget {
  final List<String> tips = [
'Eres valiente y fuerte, y puedes superar cualquier cosa!',
'Recuerda que tienes una gran comunidad de personas que te apoyan y quieren verte sano y feliz!',
'No importa cuán difícil parezca, siempre hay una luz al final del túnel. Mantén tu esperanza y fe!',
'Tú eres mucho más que tu enfermedad, sigue haciendo cosas que te gusten y te hagan feliz!',
'Mantén una mente positiva y piensa en cosas buenas que te hayan pasado hoy!',
'Tu sonrisa es contagiosa, sigue sonriendo y haciendo felices a las personas a tu alrededor!',
'Siempre recuerda que eres amado y especial!',
'Haz cosas que te hagan sentir orgulloso de ti mismo. ¡Eres un campeón!',
'Cada día que pasa te acerca más a la victoria. ¡Sigue luchando!',
  ];

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final tip = tips[random.nextInt(tips.length)];

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.99),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Text(
        tip,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}