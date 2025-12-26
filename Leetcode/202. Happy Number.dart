class Solution {
  bool isHappy(int n) {
    Set<int> seen = {};
    while (n != 1 && !seen.contains(n)) {
      seen.add(n);
      n = Sumofsquare(n);
    }
    return n == 1;
  }

  int Sumofsquare(n) {
    int sum = 0;
    while (n > 0) {
      int digit = n % 10;
      sum += digit * digit;
      n ~/= 10;
    }
    print(sum);
    return sum;
  }
}

void main() {
  Solution sol = Solution();
  sol.isHappy(82);
}
