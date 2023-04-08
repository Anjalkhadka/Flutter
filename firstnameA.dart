import 'dart:io';

void main() {
  List<String> friends = [
    'Alice',
    'Bob',
    'Charlie',
    'Dave',
    'Emily',
    'Frank',
    'Gina'
  ];
  aName(friends);
}

aName(friends) {
  if (friends.isNotEmpty && friends.first.startsWith('A')) {
    print('The first element is starts with letter a');
  } else {
    print('Not found');
  }
}
