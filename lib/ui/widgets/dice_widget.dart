import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

final randomizer = Random();

class DiceWidget extends StatefulWidget {
  const DiceWidget({super.key});

  @override
  State<DiceWidget> createState() => _DiceWidgetState();
}

class _DiceWidgetState extends State<DiceWidget> {
  int diceNumber = 1;
  int counter = 0;

  AudioPlayer player = AudioPlayer();

  void update() async {
    await player.setAsset('assets/audios/dice.mp3');
    player.play();
    Timer.periodic(const Duration(milliseconds: 100), (timer) {
      counter++;
      setState(() {
        diceNumber = randomizer.nextInt(6) + 1;
      });
      if (counter >= 10) {
        timer.cancel();
        setState(() {
          counter = 1;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: GestureDetector(
            child: Transform.rotate(
              angle: randomizer.nextDouble() * 180,
              child: Image.asset('assets/images/dice_$diceNumber.png'),
            ),
            onTap: () {
              update();
            },
          ),
        ),
      ),
    );
  }
}
