void main() {
  Solution sol = Solution();
  sol.reverseBits(43261596);
}

class Solution {
  void reverseBits(int n) {
    String a = n.toRadixString(2);
    List<int> b = [];
    for (int i = 0; i < a.length; i++) {
      if (a[i] == '0') {
        b.add(1);
      } else {
        b.add(0);
      }
    }
    print(b);
  }
}
