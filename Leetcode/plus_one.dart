class Solution {
  List<int> plusOne(List<int> digits) {
    String a;
    a = digits.join();
    a = ((BigInt.parse(a.toString()) + BigInt.parse(1.toString())).toString());

    digits = a.toString().split("").map(int.parse).toList();
    print(digits);
    return digits;
  }
}

void main(List<String> args) {
  Solution obj1 = Solution();
  obj1.plusOne([
    7,
    2,
    8,
    5,
    0,
    9,
    1,
    2,
    9,
    5,
    3,
    6,
    6,
    7,
    3,
    2,
    8,
    4,
    3,
    7,
    9,
    5,
    7,
    7,
    4,
    7,
    4,
    9,
    4,
    7,
    0,
    1,
    1,
    1,
    7,
    4,
    0,
    0,
    6,
  ]);
}
