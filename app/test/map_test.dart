import 'package:app/src/map.dart';
import 'package:test/test.dart';

void main() {
  test('to2', () {
    expect(mapper(["xx", "qwe", "qwe", "zxc", "xx", "xx"]),
        {"xx": 3, "qwe": 2, "zxc": 1});
  });
}
