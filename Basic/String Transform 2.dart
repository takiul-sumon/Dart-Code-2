import 'dart:io';

void main() {
  String? a = stdin.readLineSync();
  if (a == null) return;

  List<String> b = [];

  for (int i = 0; i < a.length; i++) {
    if (i % 3 == 0) {
      b.add('x');
    } else {
      b.add(a[i]);
    }
  }

  print(b.join());  // Output the modified string
}
