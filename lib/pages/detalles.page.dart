import 'package:flutter/material.dart';

class DetallaPge extends StatelessWidget {
  DetallaPge(
      {super.key,
      required this.valor,
      required this.estado,
      required this.colorEstado,
      required this.texto});

  double valor;
  String estado;
  Color colorEstado;
  String texto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle del calculo"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Color.fromARGB(255, 1, 1, 29),
              child: Row(
                children: [
                  Text(" Resultado",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Color.fromARGB(255, 1, 1, 29),
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(estado,
                              style: TextStyle(
                                color: colorEstado,
                                fontSize: 30,
                              )),
                          Text(
                            "  ",
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(
                            valor.toStringAsFixed(2),
                            style: TextStyle(fontSize: 110),
                          ),
                          Text(
                            "  ",
                            style: TextStyle(fontSize: 30),
                          ),
                          Text(
                            texto,
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        //BORDE DEL CUADRO REDONDE
                        color: Color.fromARGB(255, 66, 66, 95),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
