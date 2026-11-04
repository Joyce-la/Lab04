import 'package:flutter_test/flutter_test.dart';
import 'package:lab4/main.dart';
import 'package:lab4/vegetable_pizza.dart';

void main() {
  // Test 1: Menu displays all three items
  testWidgets('menu lists the three items', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab4());

    expect(find.text('Android ATC Pizza Place'), findsOneWidget);
    expect(find.text('Vegetable Pizza'), findsOneWidget);
    expect(find.text('Cheese Pizza'), findsOneWidget);
    expect(find.text('Box of Fries'), findsOneWidget);
  });

  // Test 2: Tapping a card opens its detail screen
  testWidgets('tapping a card opens its screen', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab4());

    await tester.tap(find.text('Vegetable Pizza'));
    await tester.pumpAndSettle();

    expect(find.byType(VegetablePizzaScreen), findsOneWidget);
  });

  // Test 3: Back button returns to the menu
  testWidgets('back button returns to the menu', (WidgetTester tester) async {
    await tester.pumpWidget(const Lab4());

    await tester.tap(find.text('Cheese Pizza'));
    await tester.pumpAndSettle();

    await tester.pageBack();
    await tester.pumpAndSettle();

    expect(find.text('Android ATC Pizza Place'), findsOneWidget);
  });
}
