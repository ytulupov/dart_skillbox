import 'package:app/src/doubles.dart';
import 'package:test/test.dart';

void main() {
  test('to2', () {
    expect(toDouble(20), "10100");
  });
  test('from2', () {
    expect(fromDouble("10100"), 20);
  });
}
