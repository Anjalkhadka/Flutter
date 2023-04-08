void main() {
  String name = 'Anjal khadka';

  hundreName(name);
}

hundreName(name) {
  for (int i = 0; i < 100; i++) {
    print('$name ${i + 1}');
  }
}
