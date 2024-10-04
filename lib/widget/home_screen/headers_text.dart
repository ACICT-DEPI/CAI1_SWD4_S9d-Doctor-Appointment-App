import 'package:flutter/material.dart';

class HeadersText extends StatelessWidget {
  const HeadersText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
