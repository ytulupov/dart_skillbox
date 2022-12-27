// #1 Реализуйте методы вычисления НОД и НОК целых чисел.

//наибольший общий делитель
int node(int a, int b) {
  if (a < b) {
    var tmp = a;
    a = b;
    b = tmp;
  }
  var c = a;
  do {
    c = del(a, b);
    if (c != 0) {
      a = b;
      b = c;
    } else {
      return b;
    }
  } while (true);
}

int del(int a, int b) {
  return a % b;
}

// Наименьшее общее кратное
int lcm(int a, int b) {
  var c = a / node(a, b) * b;
  return c.toInt();
}

//#1.1 Реализуйте метод, который разбивает число на простые множители и возвращает их.
List simple(int n) {
  var ans = [];
  var d = 2;
  while (d * d <= n) {
    if (n % d == 0) {
      ans.add(d);
      n = n ~/ d;
    } else {
      d++;
    }
  }
  if (n > 1) {
    ans.add(n);
  }

  return ans;
}
