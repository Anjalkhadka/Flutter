void main() {
  Map<String, dynamic> person = {
    'Name': 'Anjal',
    'Address': 'Kathmandu',
    'Age': 20,
    'Country': 'Nepal'
  };
  print(person);
  //updating the country with another country name.
  person['Country'] = 'Australia';
  print(person);
}
