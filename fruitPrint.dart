void main() {
  List<String> fruits = ["mango", "Apple", "Banana"];
  fruitsName(fruits);
}

fruitsName(fruits) {
  for (String fruit in fruits) {
    print(fruit);
  }
}
