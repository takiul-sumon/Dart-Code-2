// abstract class student {
//   void name();
//   void roll();
// }

class Intake
// extends student
{
  String? _stName;
  int? stRoll;
  String get stName => _stName!;
  name() {
    print(_stName);
  }

  roll() {
    print('50');
  }

  // Intake(String stName, int stRoll) {
  //   stName = stName;
  //   stRoll = stRoll;
  // }
  

}

void main() {
  Intake ino = new Intake();
  
  
  ino._stName = 'Takiul';
  ino.name();
  ino.roll();
}
