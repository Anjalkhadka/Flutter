void main(List<String> args) {
  int number = 5;
  mulFive(number);
}

mulFive(number) {
  int starting = 1;
  for (int i = 0; i <= 9; i++) {
    int multiply = number * starting;
    print('$number * $starting = $multiply');
    starting++;
  }
}
