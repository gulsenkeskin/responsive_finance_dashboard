import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final String text;

  const TextWidget({
    Key? key,
    required this.size,
    required this.fontWeight,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'Poppins',
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
