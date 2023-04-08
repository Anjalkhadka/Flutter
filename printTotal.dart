import 'dart:io';

void main() {
  List<int> arr = [0];

  print("Enter 10 number : ");

  for (int i = 0; i < 10; i++) {
    arr.add(stdin.readByteSync());
  }
  print(arr);
}