import 'dart:io';
import 'dart:math';

main() {
  print("Insira um numero");

  int? n = int.parse(stdin.readLineSync()!);

  var temp = n;
  int r, sum = 0;

  while (temp != 0) {
    r = temp % 10;
    sum = sum + (r * r * r);
    temp = (temp / 10).floor();
  }

  if (n == sum) {
    print("O número informado é um número armstrong.");
  } else {
    print("O número informado não é um número armstrong.");
  }
}
