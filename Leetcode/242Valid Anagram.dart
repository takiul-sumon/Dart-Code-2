class Solution {
  bool isAnagram(String s, String t) {
    int uniqueCount = 0;
    Map<String, int> firstUniqueFrequency = {};
    Map<String, int> secondUniqueFrequency = {};
    for (int i = 0; i < s.length; i++) {
      firstUniqueFrequency[s[i]] = (firstUniqueFrequency[s[i]] ?? 0) + 1;
    }
    for (int i = 0; i < t.length; i++) {
      secondUniqueFrequency[t[i]] = (secondUniqueFrequency[t[i]] ?? 0) + 1;
    }

    if (firstUniqueFrequency.length == secondUniqueFrequency.length) {
      for (var value in firstUniqueFrequency.keys) {
        print(firstUniqueFrequency[value]);
        // print(secondUniqueFrequency[value]);
        if (firstUniqueFrequency[value] == secondUniqueFrequency[value]) {
          uniqueCount++;
        }
      }
      print(uniqueCount);
      print(firstUniqueFrequency);

      if (uniqueCount == firstUniqueFrequency.length) {
        return true;
      }
    }

    return false;
  }
}

main() {
  Solution sol = Solution();
  sol.isAnagram('cat', 'rat');
}
