import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testingclass/arithmetic.dart';

void main() {
  testWidgets('check for test named arithmetic view in add bar',
      (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ArthimeticView(),
    ));
    await tester.pumpAndSettle();
    expect(find.text('Arithmetic'), findsOneWidget);
  });
  testWidgets('add two number', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: ArthimeticView(),
    ));
    await tester.pumpAndSettle();
    var txtField1 = find.byType(TextField).at(0);
    await tester.enterText(txtField1, '5');
    await tester.enterText(find.byType(TextField).at(1), '2');

    await tester.tap(find.widgetWithText(ElevatedButton, 'Add'));
    await tester.pumpAndSettle();
    expect(find.text('Result: 7'), findsOneWidget);
  });
}
