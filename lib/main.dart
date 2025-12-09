import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 12, 121),
        appBar: AppBar(
          title: Text('Dadoos', style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromARGB(255, 0, 5, 77),
        ),
        body: Dadoos(),
      ),
    ),
  );
}

class Dadoos extends StatefulWidget {
  const Dadoos({super.key});

  @override
  State<Dadoos> createState() => _DadosState();
}

class _DadosState extends State<Dadoos> {
  int numLeft = 1;
  int numRight = 1;

  void numLnumR() {
    numLeft = Random().nextInt(6) + 1;
    numRight = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  numLnumR();
                  print("dado numero: $numLeft");
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0), // 👈 Adiciona o espaçamento
                child: Image.asset(
                  'images/dado$numLeft.png',
                  key: ValueKey(numLeft),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  numLnumR();
                  print("dado numero: $numRight");
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'images/dado$numRight.png',
                  key: ValueKey(numRight),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
