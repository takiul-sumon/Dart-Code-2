main() {
  int? age;
  // age = 25;
  print(age ?? 20);
  List<int?> nulllist = [10, 20, 30, 40, null];
  print(nulllist);
}
