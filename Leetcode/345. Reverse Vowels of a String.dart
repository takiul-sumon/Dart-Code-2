
class Solution {
  String reverseVowels(String s) {
    List<String> vowels = [];
    List<String> allCharacter = s.split('').toList();
    List<int> index = [];

    for (int i = 0; i < s.length; i++) {
      int c = s.codeUnitAt(i);
      if (c == 65 ||
          c == 69 ||
          c == 73 ||
          c == 79 ||
          c == 85 ||
          c == 97 ||
          c == 101 ||
          c == 105 ||
          c == 111 ||
          c == 117) {
        vowels.add(s[i]);
        index.add(i);
      }
    }
    vowels = vowels.reversed.toList();
    int i = 0;
    for (var c in index) {
      allCharacter[c] = vowels[i];
      i++;
    }
    String expected = allCharacter.join();
    return expected;
  }
}

void main() {
  Solution solution = Solution();
  solution.reverseVowels('IceCreAm');
}
