import 'package:flutter/material.dart';
import 'package:test/screens/CalculatorScreen.dart';
import 'package:test/screens/CameraScreen.dart';
import 'package:test/screens/HomeScreen.dart';
import 'package:test/screens/ProfileScreen.dart';
import 'package:test/screens/TestScreen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  
  // 1. Select index
  int _selectedIndex = 0;

  // 2. Make a list of screens to show
  final List<Widget> screens = [
    HomeScreen(),
    CameraScreen(),
    ProfileScreen()
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: screens.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            label: 'Camera'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: 'Profile'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}