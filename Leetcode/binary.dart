class Solution {
  String addBinary(String a, String b) {
    BigInt integer1 = BigInt.parse(a, radix: 2);
    BigInt integer2 = BigInt.parse(b, radix: 2);

    print((integer1 + integer2).toRadixString(2));
    return ((integer1 + integer2).toRadixString(2));
  }
}

void main(List<String> args) {
  Solution sol1 = Solution();
  sol1.addBinary("11", "1");
}


//  int binrary2 = int.parse(a);
//     int integer1;
//     int integer2;