// class Solution {
//   String longestCommonPrefix(List<String> strs) {
//     if (strs.isEmpty) return "";
//     String prefix = strs[0];
//     for (int i = 1; i < strs.length; i++) {
//       while (strs[i].indexOf(prefix) != 0) {
//         prefix = prefix.substring(0, prefix.length - 1);
//         if (prefix.isEmpty) return "";
//       }
//     }
//     return prefix;

//   }
// }

class Solution {
  void longestCommonPrefix(List<String> strs) {
    // String firstValue = strs[0];
    strs.sort();
    for(int i=0; i<strs.length; i++){
      
    }
    
  }
}

main() {
  Solution sol = Solution();
  sol.longestCommonPrefix(["flower", "flow", "flight"]);
}
