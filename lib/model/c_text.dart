import 'package:flutter/material.dart';

class cText extends StatelessWidget {
  String text;
  double size;
  Color color;
  cText({
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
