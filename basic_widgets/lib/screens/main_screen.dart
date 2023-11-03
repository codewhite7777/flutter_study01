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
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/singlechildscrollview');
            },
            child: Text('SingleChildScrollView Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/listview');
            },
            child: Text('ListView Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/gridview');
            },
            child: Text('GridView Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/pageview');
            },
            child: Text('PageView Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/tabbar');
            },
            child: Text('TabBar Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/bottomnavigationbar');
            },
            child: Text('BottomNavigationBar Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/center');
            },
            child: Text('Center Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/padding');
            },
            child: Text('Padding Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/align');
            },
            child: Text('Align Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/expanded');
            },
            child: Text('Expanded Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/sizedbox');
            },
            child: Text('SizedBox Widget'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed('/card');
            },
            child: Text('Card Widget'),
          ),
        ],
      ),
    );
  }
}
