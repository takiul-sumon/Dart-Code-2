class person {
  int? age1;
  String? name;
  person(this.name, this.age1);
}

class Student extends person {
  int? age=20;
  String? name;
  Student(this.name, this.age) : super('Naim', 20);
  
 int get Age=> age!;
}

main() 
{
  var random = Student('Asif', 25);
  print(random.age1);
  Student Naim = new Student('Atik', 21);
  print(random.Age);
  print(Naim.Age);
}
