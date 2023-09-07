import 'package:flutter/material.dart';
import 'package:primeiro_projeto/components/dificulty.dart';
import 'package:primeiro_projeto/resources/globals.dart';

class Task extends StatefulWidget {
  final String nome;
  final int dificuldade;
  final String foto;

  const Task(this.nome, this.foto, this.dificuldade, {super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: secondary,
          ),
            height: 140,
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.white
                ),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color.fromARGB(66, 255, 255, 255)),
                      width: 72,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.network(
                          widget.foto,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 200,
                            child: Text(
                              widget.nome,
                              style: const TextStyle(fontSize: 20),
                              overflow: TextOverflow.ellipsis,
                            )),
                        const Difficulty(3)
                      ],
                    ),
                    SizedBox(
                      height: 52,
                      width: 52,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (nivel < 10) {
                                nivel++;
                              }
                            });
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(
                                      secondary)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: const [
                              Icon(Icons.arrow_drop_up, color: quaternary,),
                              Text(
                                'UP',
                                style: TextStyle(fontSize: 12, color: quaternary),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      width: 200,
                      child: LinearProgressIndicator(
                        backgroundColor: quaternary,
                        color:  terciary,
                        value: nivel / 10,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Nível: $nivel',
                      style: const TextStyle(color: quaternary, fontSize: 16),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
