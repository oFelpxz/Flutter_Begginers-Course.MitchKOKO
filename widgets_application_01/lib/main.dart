// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
        // Column: É um wigdet que precisa de uma children para funcionar, ele organiza tudo em coluna.
        body: Column(
          // MainAxis: Alinhamentos Vertical.
          mainAxisAlignment: MainAxisAlignment.start,
          // CrossAxis: Alinha os elementos.
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Elemento 1:
            // Expanded: Ele basicamente vai preencher o espaço restante.
            Expanded(
              child: Container(
                color: Colors.deepPurple,
              ),
            ),
            // Elemento 2:
            Expanded(
              // Flex: Controla o tamanho dela em comparação as outras.
              flex: 2,
              child: Container(
                color: Colors.deepPurple[400],
              ),
            ),
            // Elemento 3:
            Expanded(
              child: Container(
                color: Colors.deepPurple[200],
              ),
            )
          ],
        ),
        // BODY -------------------------------------

      ),
    );
  }
}