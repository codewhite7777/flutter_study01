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
      },
    );
  }
}
