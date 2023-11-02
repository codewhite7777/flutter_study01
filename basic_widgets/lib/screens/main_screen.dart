import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Widgets'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/container');
            },
            child: Text('Container Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/column');
            },
            child: Text('Column Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/row');
            },
            child: Text('Row Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/stack');
            },
            child: Text('Stack Widget'),
          ),
        ],
      ),
    );
  }
}
