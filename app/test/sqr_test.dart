import 'package:app/src/sqr.dart';
import 'package:test/test.dart';

void main() {
  test('#7 sqr', () {
    expect(sqr(9, 2), 2.9999999999938742);
  });
  test('#7 sqr as ex S', () {
    double nine = 9;
    expect(nine.expsqr(2), 2.9999999999938742);
  });
}
