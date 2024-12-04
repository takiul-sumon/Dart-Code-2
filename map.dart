void main() {
  var person = {'name': 'Takiul', 'age': 20};
  print(person);
  // person['address'] = 'Dhaka';
  print(person);

  print(person.containsKey('name'));

  print(person.containsValue(20));

  print(person.keys);
  print(person.values);
  // var person2 = {'name': 'Sumon', 'age': 20};
  var person2 = Map.from(person);
  print(person == person2);
  var keyList = person.keys.toList();
  var valueList = person.values.toList();
  print(valueList);
}
