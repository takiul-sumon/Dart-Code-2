void main() {
  Solution obj1 = Solution();
  obj1.isPalindrome("Damosel, a poem? A carol? Or a cameo pale? (So mad!)");
}

class Solution {
  bool isPalindrome(String s) {
    bool isPalindrom = false;
    String string2 = "";
    for (int i = s.length - 1; i >= 0; i--) {
      string2 = string2 + s[i];
    }
    string2 = string2.toLowerCase();
    s = s
        .replaceAll(" ", "")
        .replaceAll(",", "")
        .replaceAll(":", "")
        .replaceAll('.', "")
        .replaceAll("@", "")
        .replaceAll("#", "")
        .replaceAll("!", "")
        .replaceAll("_", "")
        .replaceAll("{", "")
        .replaceAll("}", "")
        .replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("\\", "")
        .replaceAll("%", "")
        .replaceAll("'", "")
        .replaceAll("\"", "")
        .replaceAll("-", "")
        .replaceAll("?", "")
        .replaceAll(";", "")
        .replaceAll("(", "")
        .replaceAll(")", "")
        .replaceAll("`", "");
    string2 = string2
        .replaceAll(" ", "")
        .replaceAll(",", "")
        .replaceAll(":", "")
        .replaceAll('.', "")
        .replaceAll("@", "")
        .replaceAll("#", "")
        .replaceAll("!", "")
        .replaceAll("_", "")
        .replaceAll("{", "")
        .replaceAll("}", "")
        .replaceAll("[", "")
        .replaceAll("]", "")
        .replaceAll("\\", "")
        .replaceAll("%", "")
        .replaceAll("'", "")
        .replaceAll("\"", "")
        .replaceAll("-", "")
        .replaceAll("?", "")
        .replaceAll(";", "")
        .replaceAll("(", "")
        .replaceAll(")", "")
        .replaceAll("`", "");
    int commonPart = 0;
    int j = 0;
    s = s.toLowerCase();
    for (int i = 0; i < s.length - 1; i++) {
      if (s[i] == string2[j]) {
        commonPart++;
        j++;
      }
    }
    if (commonPart == s.length - 1) {
      isPalindrom = true;
    }
    return s.isEmpty ? true : isPalindrom;
  }
}

