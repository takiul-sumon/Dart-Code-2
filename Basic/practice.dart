void main() {
  List<int> number = [10, 20, 30, 40, 50];
  print(number);
  number.insertAll(1, [5, 6, 7, 8, 9]);
  print(number);
  number.add(5);
  print(number);
  var numbe = ['GP', 'Tele', 'Bangla', 'Robi'];
  print(numbe);

  List<int> Listnumber = [1, 2, 3, 4, 5, 5, 5];
  Set<int> setNumber = {1, 2, 3, 4, 5, 3};
  Set<int> setNumber1 = {1, 2, 3, 4, 5, 3};
  print(Listnumber);
  print(setNumber.union(setNumber1));

  var num = {
    'name': "Sumon",
    'age': 20,
    'sex': 'male',
  };
  print(num['sex']);
  num['location'] = 'Dhaka';
  print(num);
  var entity = num.keys.toList();
  var attribute = num.values.toList();
  print(attribute);
}
