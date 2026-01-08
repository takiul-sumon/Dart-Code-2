void main() {
  Solution solution = Solution();
  solution.isPrefixString("a", ["aa", "aaaa", "banana"]);
}

class Solution {
  bool isPrefixString(String s, List<String> words) {
    // int count = 0;
    // String word = words.join();
    // print(words[0]);
    // print(s[0]);
    // for (int i = 0; i < s.length; i++) {
    //   if (s[i] == word[i]) {
    //     count++;
    //   }
    // }
    // if (count == s.length) {
    //   return true;
    // }
    String a = '';
    for (int i = 0; i < words.length; i++) {
      a += words[i];
      if (a == s) {
        print('object');
        return true;
      }
    }
    return false;
  }
}
