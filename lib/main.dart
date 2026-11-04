import 'package:flutter/material.dart';

import 'cheese_pizza.dart';
import 'fries.dart';
import 'menu.dart';
import 'vegetable_pizza.dart';
import 'order_summary.dart';

void main() {
  runApp(const Lab4());
}

class Lab4 extends StatelessWidget {
  const Lab4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MenuScreen(),
      routes: {
        'menu': (context) => const MenuScreen(),
        'vegetable': (context) => const VegetablePizzaScreen(),
        'cheese': (context) => const CheesePizzaScreen(),
        'fries': (context) => const FriesScreen(),
        'order_summary': (context) => const OrderSummaryScreen(),
      },
    );
  }
}
