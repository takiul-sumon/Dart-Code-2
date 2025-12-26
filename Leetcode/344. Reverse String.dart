void main() {
  Solution sol = Solution();
  sol.reverseString(['a', 'b', 'c']);
}

class Solution {
  void reverseString(List<String> s) {
    List<String> modifiableString = [];

    for (int i = 0; i < s.length; i++) {
      modifiableString.add(s[i]);
    }
    print(modifiableString);
    s.clear();

    for (int i = modifiableString.length - 1; i >= 0; i--) {
      s.add(modifiableString[i]);
    }
  }
}
