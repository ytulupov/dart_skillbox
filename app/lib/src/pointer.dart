// #6 Реализуйте класс Point, который описывает точку в трёхмерном пространстве. У данного класса реализуйте метод distanceTo(Point another),
// который возвращает расстояние от данной точки до точки в параметре. По желанию можете реализовать метод, принимающий три точки в трёхмерном
// пространстве и возвращающий площадь треугольника, который образуют данные точки. Реализуйте factory-конструкторы для данного класса,
// возвращающие начало координат, и ещё несколько на своё усмотрение (например, конструктор, возвращающий точку с координатами [1,1,1],
// которая определяет единичный вектор).
import 'dart:math';

class Point {
  double x = 0;
  double y = 0;
  double z = 0;

  Point(this.x, this.y, this.z);
  Point.zero()
      : x = 0,
        y = 0,
        z = 0;
  Point.one()
      : x = 1,
        y = 1,
        z = 1;
  Point.two()
      : x = 2,
        y = 2,
        z = 2;

  factory Point.twoP() {
    return Point(2, 2, 3);
  }

  double distanceTo(Point another) {
    return sqrt(pow((another.x - x), 2) +
        pow((another.y - y), 2) +
        pow((another.z - z), 2));
  }

  double S(Point s1, Point s2) {
    var zz = ((x - s1.x) * (s1.x - s2.x) +
            (y - s1.y) * (s1.y - s2.y) +
            (z - s1.z) * (s1.z - s2.z)) /
        ((sqrt(pow(x - s1.x, 2) + pow(y - s1.y, 2) + pow(z - s1.z, 2))) *
            sqrt(pow(s1.x - s2.x, 2) +
                pow(s1.y - s2.y, 2) +
                pow(s1.z - s2.z, 2)));
    var s = 1 /
        2 *
        sqrt(1 - pow(zz, 2)) *
        sqrt(pow(x - s1.x, 2) + pow(y - s1.y, 2) + pow(z - s1.z, 2)) *
        sqrt(pow(s1.x - s2.x, 2) + pow(s1.y - s2.y, 2) + pow(s1.z - s2.z, 2));
    return s;
  }
}
