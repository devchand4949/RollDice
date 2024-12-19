import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(Dice());
}

class Dice extends StatefulWidget {
  Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var currentdice = 3;

  @override
  void dicescroll() {
    setState(() {
      currentdice = Random().nextInt(6) + 1;
      print(currentdice);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.blueAccent),
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                'assets/images/dice-$currentdice.png',
                height: 200,
                width: 200,
              ),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: dicescroll,
                child: Text(
                  'Roll Dice',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.yellowAccent),
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
