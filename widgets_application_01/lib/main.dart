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
  var names = ["Mitch", "Sharon", "Vince"];

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
        body: ListView.builder(
          // Item Count: Número de items que vão ter, o Index
          itemCount: names.length,
          // Item Build: Basicamente um For:
          itemBuilder: (context, index)=> ListTile(
            //Title: Nesse estamos pegando o Valor do Index.
            title: Text(names[index]),
          )
        )
        // BODY -------------------------------------

      ),
    );
  }
}