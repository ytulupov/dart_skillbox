List pars(String s) {
  var num = [];
  List<String> list = s.split(" ");
  for (var i = 0; i < list.length; i++) {
    var s = list[i];
    var isNumber = int.tryParse(s);
    if (isNumber != null) {
      num.add(isNumber);
    }
  }
  return num;
}
