// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // Não Faço ideia
  @override
  State<MyApp> createState() => _MyAppState();
}

// Extende o MyApp, Pra funcionar tive que fazer isso.
class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    // MATERIALAPP: ter um cosnt atrás dele tira os erros.
    return MaterialApp (
      // DEBUGSHOW: Tira o debug logo do app.
      debugShowCheckedModeBanner: false,
      // HOME: basicamente define a tela principal.
      // SCAFFOLD: é um plano branco, funciona como um esquelo que segura todas as partes do app.
      home: Scaffold( 
      // COMPONENTES DO SCAFFOLD:
        // BODY -------------------------------------
        // BODY: Definimos o conteúdo principal da tela.
        // Stack: Organiza os elementos um em cima do outro.
        body: Stack(
          alignment: Alignment.center,
          children: [
            // BIG BOX
            Container(
              height: 300,
              width: 300,
              color: Colors.deepPurple
            ),
            // MEDIUM BOX
            Container(
              height: 200,
              width: 200,
              color: Colors.deepPurple[400],
            ),
            // SMALL BOX
            Container(
              height: 100,
              width: 100,
              color: Colors.deepPurple[200],
            )
          ],
        ) 
      )
    );
  }
}