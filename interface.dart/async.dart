import 'dart:async';

main() async {
  print('Hi');
  var creation = await Future.wait([animal(), animal1()]);
  print(creation);
  print('Bye');
}

Future<String> animal() {
  return Future.delayed(Duration(seconds: 3), () => "lion");
}

Future<String> animal1() {
  return Future.delayed(Duration(seconds: 5), () => "lion2");
}
