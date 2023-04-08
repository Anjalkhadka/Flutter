import 'dart:io';

void main() {
  print("Enter the number:");

  int natural = int.parse(stdin.readLineSync()!);
  naturalNumber(natural);
}

naturalNumber(natural) {
  int sum = 0;
  for (int i = 0; i <= natural; i++) {
    sum += i;
  }
  print('The sum of natural number is $sum');
}
