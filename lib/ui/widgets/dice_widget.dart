import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceWidget extends StatefulWidget {
  const DiceWidget({super.key});

  @override
  State<DiceWidget> createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  int diceNumber = 1;
  void update() {
    setState(() {
      diceNumber = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: GestureDetector(
            child: Image.asset('assets/images/dice_$diceNumber.png'),
            onTap: () {
              update();
            },
          ),
        ),
      ),
    );
  }
}
