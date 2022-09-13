import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noticias/pages/detalles.page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required String title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double peso = 68.5;
  int edad = 38;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculo IMC"),
        ),
        body: Column(
          children: [
            Expanded(
                //contenedor 1
                flex: 3,
                child: Container(
                  color: Color.fromARGB(255, 51, 50, 50),
                  child: Row(
                    children: [
                      Expanded(
                          //contenedor 1/2
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.man, size: 100),
                              Text("Hombre"),
                            ],
                          ),
                          decoration: BoxDecoration(
                            //BORDE DEL CUADRO REDONDE
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      )),
                      Expanded(
                          //contenedor 2/2
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.woman, size: 100),
                              Text("Mujer o"),
                            ],
                          ),
                          decoration: BoxDecoration(
                            //BORDE DEL CUADRO REDONDE
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      )),
                    ],
                  ),
                )),
            Expanded(
                //contenedor 2
                flex: 3,
                child: Container(
                  color: Color.fromARGB(255, 51, 50, 50),
                  child: Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            //BORDE DEL CUADRO REDONDE
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      )),
                    ],
                  ),
                )),
            Expanded(
                //contenedor 3
                flex: 3,
                child: Container(
                  color: Color.fromARGB(255, 51, 50, 50),
                  child: Row(
                    children: [
                      Expanded(
                          //contenedor 1/3
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Peso"),
                              Text(
                                peso.toString() + " Kg",
                                style: TextStyle(fontSize: 40),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      iconSize: 40,
                                      onPressed: () {
                                        setState(() {
                                          peso += 1;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.add_circle,
                                      )),
                                  IconButton(
                                      iconSize: 40,
                                      onPressed: () {
                                        setState(() {
                                          peso -= 1;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.remove_circle,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            //BORDE DEL CUADRO REDONDE
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      )),
                      Expanded(
                          //contenedor 2/3
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Edad"),
                              Text(
                                edad.toString(),
                                style: TextStyle(fontSize: 40),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                      iconSize: 40,
                                      onPressed: () {
                                        setState(() {
                                          edad += 1;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.add_circle,
                                      )),
                                  IconButton(
                                      iconSize: 40,
                                      onPressed: () {
                                        setState(() {
                                          edad += 1;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.remove_circle,
                                      )),
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            //BORDE DEL CUADRO REDONDE hhjjh hh
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      )),
                    ],
                  ),
                )),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => DetallaPge())));
              },
              child: Container(
                height: 50,
                color: Colors.pink,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Calcular",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
