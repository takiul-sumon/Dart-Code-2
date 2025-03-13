class Solution {
  String? a;
  bool isValid(String s) {
    a = s;
    bool c = true;
    for (int i = 0; i < a!.length; i++) {
      a = a!.replaceAll('{}', '').replaceAll('()', '').replaceAll('[]', '');
      a == '' ? c = true : c = false;
    }
    return c;
  }
}

main() {
  Solution sol = Solution();
  print(sol.isValid('(}'));
}
