import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  late double width;
  late double height;
  late Color color;

  CustomContainer(
      {this.width = 100,
      this.height = 100,
      this.color = Colors.red,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: color,
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0),
    );
  }
}
