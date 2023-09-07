import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:primeiro_projeto/components/task.dart';
import 'package:primeiro_projeto/resources/globals.dart';

class InitialScreen extends StatefulWidget {

  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

  class _InitialScreenState extends State<InitialScreen> {
    bool opacidade = true;
    @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: primario,
            leading: const Icon(Icons.task, color: quaternary,),
            title: const Text('Lista de Tarefas', style: TextStyle(color: quaternary),),
          ),
          body: AnimatedOpacity(
            opacity: opacidade ? 1 : 0,
            duration: const Duration(milliseconds: 800),
            child: ListView(children: const [
              Task(
                  "Aprender flutter",
                  'https://miro.medium.com/v2/resize:fit:1000/1*KABhol5JHNKrSm_9iJvGbA.png',
                  2),
              Task(
                  'Aprender flutter',
                  'https://miro.medium.com/v2/resize:fit:1000/1*KABhol5JHNKrSm_9iJvGbA.png',
                  2),
              Task(
                  'Aprender flutter',
                  'https://miro.medium.com/v2/resize:fit:1000/1*KABhol5JHNKrSm_9iJvGbA.png',
                  2),
              Task(
                  'Aprender flutter',
                  'https://miro.medium.com/v2/resize:fit:1000/1*KABhol5JHNKrSm_9iJvGbA.png',
                  2),
              SizedBox(height: 80,)
            ]),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.remove_red_eye,color: quaternary,),
            onPressed: 
            (() {
              setState(() {
                opacidade = !opacidade;
              });
            }),
            backgroundColor: primario,
          ));

  }
  }
