import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testingclass/arithmetic.dart';
import 'package:testingclass/arithmetic_view.dart';

void main() {
  late Arithmetic arithmetic;
  setUp(() {
    arithmetic = Arithmetic();
  });
  group('Hamro testing', () {
    test('Test Addition', () {
      int expectedValue = 10;
      int actualValue = arithmetic.add(5, 5);
      expect(actualValue, expectedValue);
    });

    test('Test Subtraction', () {
      int expectedValue = 0;
      int actualValue = arithmetic.sub(5, 5);
      expect(actualValue, expectedValue);
    });

    test('Test multiplication', () {
      int expectedValue = 4;
      int actualValue = arithmetic.mult(2, 2);
      expect(actualValue, expectedValue);
    });
  });
  testWidgets('add two number', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ArthimeticView(),
    ));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField).first, '5');
    await tester.enterText(find.byType(TextField).last, '5');

    await tester.tap(find.widgetWithText(ElevatedButton, 'Add'));

    await tester.pumpAndSettle();
    expect(find.text('Result is: 10'), findsOneWidget);
  });
  testWidgets('sub two number', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ArthimeticView(),
    ));
    await tester.pumpAndSettle();

    await tester.enterText(find.byType(TextField).first, '5');
    await tester.enterText(find.byType(TextField).last, '5');

    await tester.tap(find.widgetWithText(ElevatedButton, 'Subtract'));

    await tester.pumpAndSettle();
    expect(find.text('Result is: 0'), findsOneWidget);
  });
}
