void main() {
  int number = -10;
  posNegzero(number);
}

posNegzero(number) {
  if (number > 0) {
    print('$number is a positive number ');
  } else if (number < 0) {
    print('$number is negative');
  } else {
    print('$number is zero');
  }
}
