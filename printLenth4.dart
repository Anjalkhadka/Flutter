void main() {
  Map<String, dynamic> contacts = {
    'Alic': {'name': 'Alice', 'phone': '123-456-7890'},
    'Bob': {'name': 'Bob', 'phone': '456-789-0123'},
    'Charlie': {'name': 'Charlie', 'phone': '12345'}
  };

  // Find keys with length 4
  List<String> keysWithLength4 = contacts.keys.where((key) => key.length == 4).toList();

  // Print results
  print('Keys with length 4: $keysWithLength4');
}