import 'package:app/src/pars_num.dart';
import 'package:test/test.dart';

void main() {
  test('pars', () {
    expect(pars("2 asd 2 5"), [2, 2, 5]);
  });
}
