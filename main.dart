void main() {
  List<number> list = [
    number(20, 'first'),
    number(30, 'first'),
    number(40, 'first'),
    number(50, 'first'),
    number(60, 'first'),
    number(70, 'first')
  ];
  print(list[4]);
  List<student> nam = [student('Name', 20), student('rehan', 67)];
  print(list);
  list[0] = number(30, 'Two');
  print(list);

  list.removeAt(2);
  
  //Print the Length
  
  for (int i = 0; i < list.length; i++)
  {
    if(list[i].num>20)
    print('${list[i].num}');
  }

  // for (final Lis in list) {
  //   if (Lis.num > 20) print(list);
  // }
//print the same output using a variable
  final nu = list.where((list) => list.num > 20);

  // student st = student('H', 'B');
  final s = student('Atik', '60');
  print(nam[0].name);
  print(nam[1].id);
  print(s.name);
  print(list);
}

class student<T> {
  final name;
  final id;
  student(this.name, this.id);
}

class number {
  int num;
  String position;
  number(this.num, this.position);
  @override
  String toString() => 'number:$num:$position';
}
