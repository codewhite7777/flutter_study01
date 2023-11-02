import 'dart:math';

import 'package:basic_widgets/component/custom_container.dart';
import 'package:basic_widgets/screens/default_layout.dart';
import 'package:basic_widgets/screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext) => MainScreen(),
        '/container': (BuildContext) => DefaultLayoutScreen(
              appbarTitle: 'Container',
              child: CustomContainer(),
            ),
        '/column': (BuildContext) => DefaultLayoutScreen(
              appbarTitle: 'Column',
              child: Column(
                children: [
                  CustomContainer(
                    color: Colors.red,
                  ),
                  CustomContainer(
                    color: Colors.green,
                  ),
                  CustomContainer(
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
        '/row': (BuildContext) => DefaultLayoutScreen(
              appbarTitle: 'Row',
              child: Row(
                children: [
                  CustomContainer(
                    color: Colors.red,
                  ),
                  CustomContainer(
                    color: Colors.green,
                  ),
                  CustomContainer(
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
        '/stack': (BuildContext) => DefaultLayoutScreen(
              appbarTitle: 'Stack',
              child: Stack(
                children: [
                  CustomContainer(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  CustomContainer(
                    width: 80,
                    height: 80,
                    color: Colors.green,
                  ),
                  CustomContainer(
                    width: 60,
                    height: 60,
                    color: Colors.blue,
                  ),
                ],
              ),
            ),
        '/singlechildscrollview': (BuildContext) => DefaultLayoutScreen(
              appbarTitle: 'SingleChildScroll',
              child: SingleChildScrollView(
                child: ListBody(
                  children: [
                    ...List.generate(
                      100,
                      (index) => ListTile(
                        title: Text('$index'),
                      ),
                    ).toList(),
                  ],
                ),
              ),
            ),
        '/listview': (BuildContext) => DefaultLayoutScreen(
              appbarTitle: 'ListView',
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Home'),
                    leading: Icon(Icons.home),
                    trailing: Icon(Icons.navigate_next),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Event'),
                    leading: Icon(Icons.event),
                    trailing: Icon(Icons.navigate_next),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text('Camera'),
                    leading: Icon(Icons.camera),
                    trailing: Icon(Icons.navigate_next),
                    onTap: () {},
                  ),
                ],
              ),
            ),
        '/gridview': (BuildContext) => DefaultLayoutScreen(
              appbarTitle: 'GridView',
              child: GridView.count(
                children: [
                  ...List.generate(
                    3,
                    (index) => CustomContainer(),
                  ),
                ],
                crossAxisCount: 2,
              ),
            ),
      },
    );
  }
}
