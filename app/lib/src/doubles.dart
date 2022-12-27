import 'dart:math';

// #2 Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.

String toDouble(int i) {
  var b = "";
  while (i > 0) {
    b = (i % 2).toString() + b;
    i = i ~/ 2;
  }

  return b;
}

int fromDouble(String s) {
  List<String> result = s.split('');
  var chislo = 0;
  int dlinna = result.length;
  for (int i = 0; i < dlinna; i++) {
    int s = dlinna - i - 1;
    chislo = chislo + int.parse(result[i]) * pow(2, s).round();
  }

  return chislo;
}
