import 'package:flutter_test/flutter_test.dart';
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
}
