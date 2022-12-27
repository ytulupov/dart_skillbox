import 'dart:ffi';

Map<String, int> mapper(List ls) {
  Map<String, int> inal = {};
  var lss = ls.length;
  for (var i = 0; i < lss; i++) {
    var s = inal.keys.toList().indexOf(ls[i]);
    if (s == -1) {
      int count = 0;
      for (var s = 0; s < lss; s++) {
        if (ls[i] == ls[s]) {
          count++;
        }
      }
      inal[ls[i]] = count;
    }
  }
  return inal;
}
