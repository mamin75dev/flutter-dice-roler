import 'package:flutter/material.dart';
import 'package:roll_dice/ui/screens/dice_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: DiceScreen());
  }
}
