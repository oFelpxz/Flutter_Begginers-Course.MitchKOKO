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
        // List View: Permite listas roláveis.
        body: GridView.builder(
          // ItemCount: Número de itens.
          itemCount: 4,
          // CrossAxisCount: Número de elemento que vai ter por ROW.
          // ItemBuilder: Basicamente um for, vai utilizar o itemCount como index, e o context, é o conteúdo de cada grid.
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) => Container(
            color: Colors.deepPurple,
            margin: EdgeInsets.all(3),
            )
        )
      )

    );
  }
}