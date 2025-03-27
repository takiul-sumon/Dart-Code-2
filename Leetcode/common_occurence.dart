class Solution {
  int strStr(String haystack, String needle) {
    int index;
    if (haystack.contains(needle)) {
      index = haystack.indexOf(needle);
    } else {
      index = -1;
    }
    print(index);
    return index;
  }
}

main() {
  Solution sl = Solution();
  sl.strStr('hello', 'll');
  
}
  