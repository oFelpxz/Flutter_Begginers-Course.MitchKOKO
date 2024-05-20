// ignore_for_file: prefer_const_constructors

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
        // BACKGROUD: Define a cor do fundo, podemos definir SHADE, passando o mouse por cima.
        backgroundColor: Colors.blue[100], 

        // APP BAR ----------------------------------
        // APPBAR: Barra superior do aplicativo.
        appBar: AppBar(
          // TITLE: Widget de título do APPBAR.
          title: Text("Widget Application",
            style: TextStyle(color: Colors.white70),
          ),
          centerTitle: true,
          // ELEVATION: Tira a elevação do aplicativo.
          elevation: 0,
          leading: Icon(Icons.menu, 
            color: Colors.white70,
          ),
          // ACTIONS: É usada pra definir uma lista de widgets. geralmente no canto superior direito, são frequentemente usados para icones de ações.
          actions: [IconButton(onPressed: (){}, icon: Icon(Icons.logout, color: Colors.white70))],
          backgroundColor: Colors.black87,
        ),
        // APP BAR ----------------------------------

        // BODY -------------------------------------
        // BODY: Definimos o conteúdo principal da tela.
        body: Center(
          // CONTAINER: Funciona igual os containers do HTML, pelo fato de ser um widget, podemos definir filhos para ele.
          child: Container(
            height: 300,
            width: 300,
            // DECORATION: Para decorar mais.
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(20),
            ),  
            // PADDING:  all, only.
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10), 
            // CHILD: Podemos adcionar mais widgets filhos do container.
            child: Icon(Icons.favorite,
              color: Colors.red[900],
              size: 64,
            ),
          ),
        ),
        // BODY -------------------------------------

      ),
    );
  }
}