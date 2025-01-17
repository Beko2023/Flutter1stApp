import 'package:flutter/material.dart';
import 'package:landing_page/styled_body_text.dart';
import 'package:landing_page/styled_button.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugar = 0;
  int milk = 0;

  void increaseStrength() {
    setState(() {
      strength < 5 ? strength++ : strength = 1;
    });
  }

  void increaseMilk() {
    setState(() {
      milk < 5 ? milk++ : milk = 1;
    });
  }

  void increaseSugar() {
    setState(() {
      sugar < 5 ? sugar++ : sugar = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              const StyledBodyText('Strength: '),
              for (int i = 0; i < strength; i++)
                Image.asset(
                  'assets/images/leaves.png',
                  width: 40,
                  color: const Color(0xFFF0EDD4),
                  colorBlendMode: BlendMode.multiply,
                ),
              Expanded(child: SizedBox()),
              StyledButton(onPressed: increaseStrength, child: Text('+')),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const StyledBodyText('Milk: '),
                if (milk == 0) const StyledBodyText("No milk please."),
                for (int i = 0; i < milk; i++)
                  Image.asset(
                    'assets/images/milk.png',
                    width: 40,
                    color: const Color(0xFFF0EDD4),
                    colorBlendMode: BlendMode.multiply,
                  ),
                Expanded(child: SizedBox()),
                StyledButton(onPressed: increaseMilk, child: Text('+')),
              ],
            )),
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const StyledBodyText('Sugar: '),
                if (sugar == 0) const StyledBodyText("No added sugars please."),
                for (int i = 0; i < sugar; i++)
                  Image.asset(
                    'assets/images/sugar_cube.png',
                    width: 40,
                    color: const Color(0xFFF0EDD4),
                    colorBlendMode: BlendMode.multiply,
                  ),
                Expanded(child: SizedBox()),
                StyledButton(onPressed: increaseSugar, child: Text('+')),
              ],
            ))
      ],
    );
  }
}
