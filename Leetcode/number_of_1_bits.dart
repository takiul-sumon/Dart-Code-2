class Solution {
  int hammingWeight(int n) {
    List<int> binary = [];
    int count = 0;
    while (n > 0) {
      int reminder = n % 2;
      binary.add(reminder);
      n ~/= 2;
    }
    for (int i = 0; i < binary.length; i++) {
      if (binary[i] == 1) {
        count++;
      }
    }
    return count;
  }
}

main() {
  Solution sol = Solution();
  sol.hammingWeight(2147483645);
}
