import 'package:flutter/material.dart';
import 'package:landing_page/coffee_prefs.dart';
import 'package:landing_page/styled_body_text.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('My Tea'),
            backgroundColor: Color(0xFFFEA1A1),
            foregroundColor: Color(0xFF481E14),
            centerTitle: true),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  color: const Color(0xFFECCDB4),
                  padding: const EdgeInsets.all(20),
                  child: const StyledBodyText('How I like my tea')),
              Container(
                  color: const Color(0xFFF0EDD4),
                  padding: const EdgeInsets.all(20),
                  child: const CoffeePrefs()),
              Expanded(
                child: Image.asset(
                  'assets/images/backgroundtea.jpg',
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.bottomCenter,
                ),
              )
            ]));
  }
}
