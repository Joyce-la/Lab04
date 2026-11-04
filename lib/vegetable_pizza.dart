import 'package:flutter/material.dart';

class VegetablePizzaScreen extends StatelessWidget {
  const VegetablePizzaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Vegetable Pizza'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/veggie_pizza.jpg',
              width: 200,
              height: 200,
            ),
            const Text(
              'Vegetable Pizza is a pizza with mixed '
              'vegetable mix on top of it.',
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'order_summary');
              },
              child: const Text('View Order Summary'),
            ),
          ],
        ),
      ),
    );
  }
}
