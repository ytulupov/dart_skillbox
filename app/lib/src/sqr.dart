// #7 Реализуйте метод, который вычисляет корень любой заданной степени из числа. Реализуйте данный метод как extension-метод для num.
// Алгоритм можете взять на википедии как «Алгоритм нахождения корня n-й степени». Запрещается использовать методы math. В случае когда значение вернуть невозможно,
// необходимо бросать исключение с описанием ошибки.
double mabs(double x) {
  return (x < 0) ? -x : x;
}

double sqr(double num, int rootDegree) {
  double eps = 0.00000000001; //допустимая погрешность
  double root = num / rootDegree; //начальное приближение корня
  double rn = num; //значение корня последовательным делением
  int countiter = 0; //число итераций
  while (mabs(root - rn) >= eps) {
    rn = num;
    for (int i = 1; i < rootDegree; i++) {
      rn = rn / root;
    }
    root = rn / rootDegree + root * (1.0 - 1.0 / rootDegree);
    root = 0.5 * (rn + root);
    countiter++;
  }
  // print('root: ${root}');
  // print('итерации : ${countiter}');

  return root;
}

extension FancyNum on num {
  num expsqr(int other) => sqr(this as double, other);
}
