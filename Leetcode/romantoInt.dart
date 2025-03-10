class Solution {
  int romanToInt(String s) {
    int ans = 0;
    Map<String, int> roman = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };
    for (int i = s.length-1; i >= 0; i--) {
      if (i + 1 < s.length &&
          int.parse(roman[s[i ]].toString()) < int.parse(roman[s[i + 1]].toString())) {
        ans -= int.parse(roman[s[i]].toString());
      } else {
        ans += int.parse(roman[s[i]].toString());
      }
    }
    return ans;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.romanToInt('MCMXCIV'));
}
