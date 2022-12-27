import 'package:app/src/pointer.dart';
import 'package:test/test.dart';

void main() {
  test('point distanceTo', () {
    var zeroP = Point.zero();
    var oneP = Point.two();
    var twoP = Point.twoP();

    expect(oneP.distanceTo(zeroP), 3.4641016151377544);
  });
  test('point S', () {
    var zeroP = Point.zero();
    var oneP = Point.two();
    var twoP = Point.twoP();

    expect(oneP.S(zeroP, twoP), 1.4142135623730925);
  });
}
