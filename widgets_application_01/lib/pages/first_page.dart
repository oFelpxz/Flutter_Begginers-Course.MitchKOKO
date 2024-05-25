// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:widgets_application_01/pages/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage ({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Primeira Página")),
      body: Center(
        child: ElevatedButton(
          child: Text("Ir para página 2"),
          onPressed: () {
            // Navegar para a segunda página.
            Navigator.push(context, MaterialPageRoute(builder: (context) => SecondePage()));
          },
        ),
      ),
    );
  }
}