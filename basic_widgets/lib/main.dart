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
              appbarTitle: 'container',
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.all(8.0),
              ),
            ),
      },
    );
  }
}
