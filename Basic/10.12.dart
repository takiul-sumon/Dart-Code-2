main() {
  int? age;
  // age = 25;
  print(age ?? 20);
  List<int?> nulllist = [10, 20, 30, 40, null];
  print(nulllist);
  Student st = new Student();
  print(st.getName('Sumon'));
}

class Student {
  String getName(String name) {
    _idandName(name);
    return name;
  }

  _idandName(String name) {
    print('$name and Id');
  }
}
