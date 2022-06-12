import 'package:flutter/material.dart';

class CText extends StatelessWidget {
  String text;
  double size;
  Color color;
  CText({
    Key? key,
    required this.text,
    this.size = 14,
    this.color = Colors.black
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: size, color: color),
    );
  }
}
