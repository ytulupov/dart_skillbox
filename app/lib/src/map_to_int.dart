import 'dart:math';

List mappperint(List l) {
  Map<String, int> maps = {
    "one": 1,
    "two": 2,
    "three": 3,
    "four": 4,
    "five": 5,
    "six": 6,
    "seven": 7,
    "eight": 8,
    "nine": 9,
    "zero": 0
  };
  var fin = [];
  for (var i = 0; i < l.length; i++) {
    if (maps[l[i]] != null) {
      fin.add(maps[l[i]]);
    }
  }
  return fin.toSet().toList();
}
