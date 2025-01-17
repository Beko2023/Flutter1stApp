import 'package:flutter/material.dart';

class StyledBodyText extends StatelessWidget {
  const StyledBodyText(this.text, {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          color: Color(0xFF481E14),
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ));
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
