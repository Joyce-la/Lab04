import 'package:flutter/material.dart';

class CheesePizzaScreen extends StatelessWidget {
  const CheesePizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Cheese Pizza'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/cheese_pizza.jpg',
              width: 200,
              height: 200,
            ),
            const Text(
              'Cheese Pizza is topped with delicious '
              'melted cheese.',
            ),
          ],
        ),
      ),
    );
  }
}
