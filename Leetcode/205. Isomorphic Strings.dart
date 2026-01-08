class Solution {
  bool isIsomorphic(String s, String t) {
    Map<String, String> mapping = {};
    Map<String, String> reversemapping = {};
    if (s.length != t.length) return false;
    for (int i = 0; i < s.length; i++) {
      String a = s[i];
      String b = t[i];
      if (mapping.containsKey(a) && mapping[a] != b) {
        return false;
      }
      if (reversemapping.containsKey(b) && reversemapping[b] != a) {
        return false;
      }
      mapping[a] = b;
      reversemapping[b] = a;
    }

    return true;
  }
}

void main() {
  Solution sol = Solution();
  sol.isIsomorphic('bbbaaaba', 'aaabbbba');
}
