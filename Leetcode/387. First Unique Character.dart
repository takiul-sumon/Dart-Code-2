class Solution {
  int firstUniqChar(String s) {
    List<String> uniqueCharecter = [];
    Map<String, int> noOfCharecterOccure = {};
    int count = 0;
    String c = '';
    for (int i = 0; i < s.length; i++) {
      if (uniqueCharecter.contains(s[i])) {
      } else {
        uniqueCharecter.add(s[i]);
      }
    }
    for (int i = 0; i < uniqueCharecter.length; i++) {
      for (int j = 0; j < s.length; j++) {
        if (uniqueCharecter[i] == s[j]) {
          count++;
        }
      }
      noOfCharecterOccure[uniqueCharecter[i]] = count;
      count = 0;
    }
    print(noOfCharecterOccure);
    for (int i = 0; i < uniqueCharecter.length; i++) {
      if (noOfCharecterOccure[uniqueCharecter[i]] == 1) {
        c = uniqueCharecter[i];
        break;
      }
    }
    for (int i = 0; i < s.length; i++) {
      if (s[i] == c) {
        return i;
      }
    }
    return -1;
  }
}

main() {
  Solution sol = Solution();
  print(sol.firstUniqChar('aabb'));
}


// noOfCharecterOccure[uniqueCharecter[i]] = 5;