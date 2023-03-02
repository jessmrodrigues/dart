import 'dart:io';

void main() {
  print("Insira uma palavra");

  String? palavra = stdin.readLineSync();

  String? reverse = palavra!.split('').reversed.join();

  if (palavra == reverse) {
    print("É palindromo");
  } else
    print("não é");
}
