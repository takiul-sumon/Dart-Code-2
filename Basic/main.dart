// void main() {
//   List<number> list = [
//     number(20, 'first'),
//     number(30, 'first'),
//     number(40, 'first'),
//     number(50, 'first'),
//     number(60, 'first'),
//     number(70, 'first')
//   ];
//   print(list[4]);
//   List<student> nam = [student('Name', 20), student('rehan', 67)];
//   print(list);
//   list[0] = number(30, 'Two');
//   print(list);

//   list.removeAt(2);

//   //Print the Length

//   for (int i = 0; i < list.length; i++)
//   {
//     if(list[i].num>20)
//     print('${list[i].num}');
//   }

//   // for (final Lis in list) {
//   //   if (Lis.num > 20) print(list);
//   // }
// //print the same output using a variable
//   final nu = list.where((list) => list.num > 20);

//   // student st = student('H', 'B');
//   final s = student('Atik', '60');
//   print(nam[0].name);
//   print(nam[1].id);
//   print(s.name);
//   print(list);
// }

// class student<T> {
//   final name;
//   final id;
//   student(this.name, this.id);
// }

// class number {
//   int num;
//   String position;
//   number(this.num, this.position);
//   @override
//   String toString() => 'number:$num:$position';
// }
//inheritance
// void main() {
//   // students st = students();
//   // st.pri();
//   // Faculty faculty = Faculty();
//   // print(faculty.pri());
//   Bubt stu = students();
//   stu.pri();

// }

// abstract class Bubt {
//   // int id = 12;
//   pri() {
//     print('bubt');
//   }
// }

// class students extends Bubt {
//   int? numberOfcourse;
//   @override
//   pri() {
//     print('Student');
//   }
// }

// class Faculty extends students implements Bubt {
//   // @override
//   // int get id => 10;
//   final numberOfcourse = 30;
//   @override
//   pri() {
//     print('object   $numberOfcourse');
//   }
// }

// void main() {
//   Intake intk = Intake();
//   intk.Printid();
// }

// mixin Student {
//   int id = 10;
// }

// class Intake with Student {
//   void Printid() {
//     print('$id');
//   }
// }

// void main() {
//   final st = Student<String>('Sumon');
//   print('$st.id');
// }

// class Student<T> {
//   final T id;

//   Student(this.id);
// }
//input a int and covert into string and print the string length

// void main() {
//   int a = 1000;
//   String b = a.toString();
//   print(b.length);
// }

//swap two values of Two variable
// void main() {
//   int a = 10;
//   int b = 20;
//   int temp;
//   // temp1;
//   // temp = b;
//   // temp1 = a;
//   // // b = a;
//   // // b = temp;

//   // a = temp;
//   // b = temp1;
//   // b = temp1;
//   temp = b;
//   b = a;
//   a = temp;

//   print(a);
//   print(b);
// }
void main() {
  var name = Name();
  name.location = 'Rajbari';
  print(name.location);
}

class Name {
  String? location;
}
