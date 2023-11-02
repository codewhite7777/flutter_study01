import 'package:flutter/material.dart';

class DefaultLayoutScreen extends StatelessWidget {
  String appbarTitle;
  Widget? child;

  DefaultLayoutScreen({required this.appbarTitle, this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appbarTitle),
      ),
      body: child ?? Container(color: Colors.red),
    );
  }
}
