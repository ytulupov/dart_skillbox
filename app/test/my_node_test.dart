import 'package:app/src/my_node.dart';
import 'package:test/test.dart';

void main() {
  test('nod a,b', () {
    expect(node(10, 15), 5);
  });
  test('nod b,a', () {
    expect(node(15, 10), 5);
  });
  test('lcm a,b', () {
    expect(lcm(15, 10), 30);
  });
  test('lcm b,a', () {
    expect(lcm(10, 15), 30);
  });
  test('simple', () {
    expect(simple(20), [2, 2, 5]);
  });
}
