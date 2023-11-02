import 'package:flutter/material.dart';

class BottomNavigationScreen extends StatefulWidget {
  String appbarTitle;

  BottomNavigationScreen({required this.appbarTitle, super.key});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) {
          print(value);
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile¬',
          ),
        ],
      ),
    );
  }
}
