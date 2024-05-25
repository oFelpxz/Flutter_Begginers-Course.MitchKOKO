// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage ({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Primeira Página")),
      drawer: Drawer(
        backgroundColor: Colors.deepPurple[200],
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.favorite,
                size: 40,)),

            // Home page list tile:
            ListTile(
              leading: Icon(Icons.home),
              title: Text("HOME"),
              onTap: (){
                // Fecha o drawer.
                Navigator.pop(context);

                // Vai para a home page.
                Navigator.pushNamed(context, '/homepage');
              }
              ,
            ),

            // Settings page list tile:
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("SETTINGS"),
              onTap: (){
                // Fecha o drawer.
                Navigator.pop(context);

                // Vai para o settings.
                Navigator.pushNamed(context, '/settingspage');
              },
            )

          ],),
      ),
    );
  }
}