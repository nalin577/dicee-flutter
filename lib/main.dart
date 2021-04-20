import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[300],
        appBar: AppBar(
          title: Center(
            child: Text("Dicee"),
          ),
          backgroundColor: Colors.purple[300],
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int Ldn = 1;
  int Rdn = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    Ldn = Random().nextInt(6) + 1;
                    Rdn = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$Ldn.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    Rdn = Random().nextInt(6) + 1;
                    Ldn = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$Rdn.png')),
          )
        ],
      ),
    );
  }
}
