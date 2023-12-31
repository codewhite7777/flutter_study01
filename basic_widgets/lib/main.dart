import 'dart:math';

import 'package:basic_widgets/component/custom_container.dart';
import 'package:basic_widgets/screens/bottom_navigation_screen.dart';
import 'package:basic_widgets/screens/default_layout_screen.dart';
import 'package:basic_widgets/screens/main_screen.dart';
import 'package:basic_widgets/screens/tabbar_screen.dart';
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
        '/pageview': (BuildContext) => DefaultLayoutScreen(
              appbarTitle: 'PageView',
              child: PageView(
                children: [
                  CustomContainer(color: Colors.redAccent),
                  CustomContainer(color: Colors.greenAccent),
                  CustomContainer(color: Colors.blueAccent),
                ],
              ),
            ),
        '/tabbar': (BuildContext) => TabBarScreen(
              appbarTitle: 'TabBar, TabBarView',
            ),
        '/bottomnavigationbar': (BuilcContext) => BottomNavigationScreen(
              appbarTitle: 'BottomNavigationBar',
            ),
        '/center': (BuilcContext) => DefaultLayoutScreen(
              appbarTitle: 'Center',
              child: Center(
                child: CustomContainer(),
              ),
            ),
        '/padding': (BuilcContext) => DefaultLayoutScreen(
              appbarTitle: 'Padding',
              child: Padding(
                padding: EdgeInsets.all(40.0),
                child: CustomContainer(
                    height: double.infinity, width: double.infinity),
              ),
            ),
        '/align': (BuilcContext) => DefaultLayoutScreen(
              appbarTitle: 'Align',
              child: Align(
                alignment: Alignment.bottomRight,
                child: CustomContainer(),
              ),
            ),
        '/expanded': (BuilcContext) => DefaultLayoutScreen(
              appbarTitle: 'Expanded',
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomContainer(
                      width: double.infinity,
                      color: Colors.red,
                    ),
                  ),
                  Expanded(
                    child: CustomContainer(
                      width: double.infinity,
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    child: CustomContainer(
                      width: double.infinity,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
        '/sizedbox': (BuildContext) => DefaultLayoutScreen(
              appbarTitle: 'SizedBox',
              child: SizedBox(
                width: 100,
                height: 100,
                child: Container(color: Colors.red),
              ),
            ),
        '/card': (BuildContext) => DefaultLayoutScreen(
              appbarTitle: 'Card',
              child: Center(
                child: Card(
                  child: Container(
                    width: 200,
                    height: 200,
                  ),
                  elevation: 3.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                  ),
                ),
              ),
            ),
        '/button': (BuildContext) => DefaultLayoutScreen(
              appbarTitle: 'Buttons',
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Elevated Button'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Text Button'),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('OutlinedButton'),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.home),
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
        '/text': (BuildContext) => DefaultLayoutScreen(
              appbarTitle: 'Text',
              child: Text(
                'Hello world',
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
            ),
        '/image': (BuildContext) => DefaultLayoutScreen(
              appbarTitle: 'Image',
              child: Image.network(
                  'https://cdn.pixabay.com/photo/2023/09/26/06/45/bride-8276620_1280.jpg'),
            ),
        '/icon': (BuildContext) => DefaultLayoutScreen(
              appbarTitle: 'Icon',
              child: Icon(Icons.home, color: Colors.red, size: 60),
            ),
        '/progress': (BuildContext) => DefaultLayoutScreen(
              appbarTitle: 'Progress',
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircularProgressIndicator(),
                  LinearProgressIndicator(),
                ],
              ),
            ),
        '/circleavatar': (BuildContext) => DefaultLayoutScreen(
              appbarTitle: 'CircleAvatar',
              child: CircleAvatar(
                radius: 150.0,
                backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2023/09/26/06/45/bride-8276620_1280.jpg'),
              ),
            ),
      },
    );
  }
}
