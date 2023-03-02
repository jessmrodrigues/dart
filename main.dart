import 'dart:math';

void main() {
  var random = new Random();
  var list1 = new List.generate(50, (_) => random.nextInt(100));
  var list2 = new List.generate(50, (_) => random.nextInt(100));
  var lstIntersec = list1.toSet().intersection(list2.toSet()).toList();

  print(lstIntersec.toString());
}
