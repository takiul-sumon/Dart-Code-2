// class Solution {
//   bool wordPattern(String pattern, String s) {
//     var patterns = Map<String, String>();
//     List<String> words = s.split(' ');
//     patterns['a'] = 'dog';
//     patterns['b'] = 'cat';
//     int count = 0;
//     if (pattern.length == 1) {
//       if (s.length == 1) {
//         return true;
//       }
//     }
//     for (int i = 0; i < pattern.length; i++) {
//       if (patterns['${pattern[i]}'] == words[i]) {
//         count++;
//         if (count == words.length) {
//           return true;
//         }
//       }
//     }
//     return false;
//   }
// }

main() {
  Solution sol = Solution();
  print(sol.wordPattern("abba", "dog cat cat dog"));
}

class Solution {
  bool wordPattern(String pattern, String s) {
    List<String> chars = pattern.split('');
    List<String> words = s.split(' ');
    Map<String, String> setUniqueCharacter = {};

    if (chars.length != words.length) return false;
    for (int i = 0; i < chars.length; i++) {
      final char = chars[i];
      final word = words[i];

      if (setUniqueCharacter.containsKey(char)) {
        if (setUniqueCharacter[char] != word) {
          return false;
        }
      } else {
        if (setUniqueCharacter.containsValue(word)) {
          return false;
        }
        setUniqueCharacter[char] = word;
      }
    }
    return true;
  }
}
