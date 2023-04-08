import 'dart:io';

void main() {
  print('Enter the number from 1 -9:');
  int number = int.parse(stdin.readLineSync()!);
  mulTable(number);
}

mulTable(number) {
  int starting = 1;
  for (int i = 0; i <= 9; i++) {
    int multiplication = number * starting;

    print('$number*$starting=$multiplication');
    starting++;
  }
}
