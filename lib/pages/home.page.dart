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
  double IMC = 0;
  double altura = 166;
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
                              Text("Mujer"),
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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Altura"),
                              Text(
                                altura.round().toString() + " cm",
                                style: TextStyle(fontSize: 40),
                              ),
                              Slider(
                                activeColor: Colors.blueAccent,
                                inactiveColor: Colors.white,
                                value: altura,
                                min: 50,
                                max: 200,
                                divisions: 250,
                                onChanged: (value) {
                                  setState(() {
                                    altura = value;
                                  });
                                },
                              )
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
                                peso.round().toString() + " Kg",
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
                            //BORDE DEL CUADRO REDONDE
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
                String estad = "";
                Color estadoColor = Colors.black;
                String textos = "";
                IMC = peso / ((altura / 100) * (altura / 100));
                if (IMC < 18.5) {
                  estad = "Bajo Peso";
                  estadoColor = Color.fromARGB(255, 243, 171, 62);
                }
                if ((IMC > 18.5) & (IMC < 24.9)) {
                  estad = "Normal";
                  estadoColor = Colors.green;
                  textos = "Tienes un peso corporal normal. ¡Buen trabajo!";
                }
                if ((IMC > 25) & (IMC < 29.9)) {
                  estad = "Sobrepeso";
                  estadoColor = Color.fromARGB(255, 250, 142, 0);
                }
                if ((IMC > 30) & (IMC < 34.9)) {
                  estad = "Obesidad I";
                  estadoColor = Color.fromARGB(255, 243, 67, 54);
                }
                if ((IMC > 35) & (IMC < 39.9)) {
                  estad = "Obesidad II";
                  estadoColor = Color.fromARGB(255, 247, 39, 25);
                }
                if ((IMC > 40) & (IMC < 49.9)) {
                  estad = "Obesidad III";
                  estadoColor = Color.fromARGB(255, 202, 14, 1);
                }
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => DetallaPge(
                              valor: IMC,
                              estado: estad,
                              colorEstado: estadoColor,
                              texto: textos,
                            ))));
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
