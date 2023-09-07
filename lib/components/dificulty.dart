import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_projeto/resources/globals.dart';

class Difficulty extends StatefulWidget {
  final int dificuldade;

  const Difficulty(this.dificuldade, {super.key});

  @override
  State<Difficulty> createState() => _DifficultyState();
}

class _DifficultyState extends State<Difficulty> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.star,
          size: 15,
          color: widget.dificuldade >= 1 ? star : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: widget.dificuldade >= 2 ? star : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: widget.dificuldade >= 3 ? star : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: widget.dificuldade >= 4 ? star : Colors.blue[100],
        ),
        Icon(
          Icons.star,
          size: 15,
          color: widget.dificuldade >= 5 ? star : Colors.blue[100],
        )
      ],
    );
  }
}
