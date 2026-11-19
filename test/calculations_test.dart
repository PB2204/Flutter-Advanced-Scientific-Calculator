import 'package:calculator/providers/calculations.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Euler powers round the result, not the base', () {
    final calc = Calculations();
    addTearDown(calc.dispose);

    calc.controller.text = 'e^(1';
    calc.equal();
    expect(calc.result, '2.71828');

    calc.controller.text = 'e^(2';
    calc.equal();
    expect(calc.result, '7.38906');
  });
}
