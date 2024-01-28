import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:testingclass/arithmetic.dart';

void main() {
  // Only for integration testing
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets('Arithmetic View', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ArthimeticView(),
      ),
    );

    await tester.pumpAndSettle();

    var txtField1 = find.byType(TextField).at(0);
    await tester.enterText(txtField1, '1');

    await tester.enterText(find.byType(TextField).at(1), '21');

    await tester.tap(find.widgetWithText(ElevatedButton, 'Add'));

    await tester.pumpAndSettle();

    expect(find.text('Result: 22'), findsOneWidget);
  });
}
