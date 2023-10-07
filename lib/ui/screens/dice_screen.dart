import 'package:flutter/material.dart';
import 'package:roll_dice/ui/widgets/dice_widget.dart';

class DiceScreen extends StatelessWidget {
  const DiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: const Text('Dice Roller'),
        backgroundColor: const Color.fromRGBO(15, 157, 88, 1),
      ),
      body: const DiceWidget(),
    );
  }
}
