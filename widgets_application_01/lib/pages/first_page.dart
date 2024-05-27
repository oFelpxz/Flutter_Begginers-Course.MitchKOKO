// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:widgets_application_01/pages/home_page.dart';
import 'package:widgets_application_01/pages/profile_page.dart';
import 'package:widgets_application_01/pages/settings_page.dart';

class FirstPage extends StatefulWidget {
  FirstPage ({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List _pages = [
    HomePage(),
    ProfilePage(),
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Primeira Página")),
      body: _pages[_selectedIndex],
      bottomNavigationBar:BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: "Home",
          ),

          BottomNavigationBarItem(icon: Icon(Icons.person),
          label: "Profile",
          ),

          BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: "Settings",
          ),
        ],
        ),
    );
  }
}