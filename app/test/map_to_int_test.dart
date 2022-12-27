import 'package:app/src/map_to_int.dart';
import 'package:test/test.dart';

void main() {
  test('#5 mappperint', () {
    expect(mappperint(["one", "two", "qwe", "zxc", "two", "zero"]), [1, 2, 0]);
  });
}
