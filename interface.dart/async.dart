main() async {
  print('Hi');
  await animal();
  print('Bye');
}

animal() async {
 await Future.delayed(Duration(seconds: 3), () => print("lion"));
}
