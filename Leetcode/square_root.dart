import 'dart:math';

class Solution {
  int mySqrt(int x) {
    double square = sqrt(x);
    int value = square.toInt();
    print(value);
    return value;
  }
}

void main() {
  Solution sol1 = Solution();
  sol1.mySqrt(20);
}
