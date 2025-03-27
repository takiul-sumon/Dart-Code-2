// class Solution {
//   String? a;
//   bool isValid(String s) {
//     a = s;
//     bool c = true;
//     for (int i = 0; i < a!.length; i++) {
//       a = a![i].replaceAll('{}', '').replaceAll('()', '').replaceAll('[]', '');
//       a == '' ? c = true : c = false;
//     }
//     return c;
//   }
// }

// main() {
//   Solution sol = Solution();
//   print(sol.isValid('(([]){})'));
// }

class Solution {
  List<String> a = [];
  bool isValid(String s) {
    bool c = false;
    print(s);
    for (int i = 0; i < s.length; i++) {
      if (s[i] == '[') {
        a.add('[');
      } else if (s[i] == '{') {
        a.add('{');
      } else if (s[i] == '(') {
        a.add('(');
      } else {}
    }
    print(a);
    print('    ');
    for (int i = 0; i < s.length ; i) {
      if (s[i] == ']' && a.last == '[' && a.isNotEmpty) {
        a.removeLast();
      } else if (s[i] == '}' && a.last == '{' && a.isNotEmpty) {
        a.removeLast();
      } else if (s[i] == ')' && a.last == '('  && a.isNotEmpty) {
        a.removeLast();
      }
    }
    print(a);
    if (a.isEmpty) {
      c = true;
    } else {
      c = false;
    }
    return c;
  }
}

main() {
  Solution sol = Solution();
  print(sol.isValid('(}'));
}

// class Solution {
//   bool isValid(String s) {
//     while(s.contains('()') || s.contains('[]') || s.contains('{}')) {
//       s = s.replaceAll('()', '');
//       s = s.replaceAll('[]', '');
//       s = s.replaceAll('{}', '');
//     }
//     return s.isEmpty;
//    }
// }

// main() {
//   Solution sol = Solution();
//   print(sol.isValid('{[(])}'));
// }
