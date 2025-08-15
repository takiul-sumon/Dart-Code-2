class Solution {
  double myPow(double x, int n) {
    double answer = 1.0;

    if (n < 0) {
      x = 1 / x;
      n = -n;
    }
    while (n > 0) {
      if (n % 2 == 1) {
        answer *= x;
      }
      x *= x;
      n ~/= 2;
    }
    return answer;
  }
}

main() {
  Solution sol = Solution();
  print(sol.myPow(2, 10));
}
