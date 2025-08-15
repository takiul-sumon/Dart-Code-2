import 'dart:math';

class Solution {
  bool isPowerOfFour(int n) {
    bool isPower = false;
    num power_value = 0;
    for (int i = 0; i <= 31; i++) {
      power_value = pow(4, i);
      if (power_value == n) {
        isPower = true;
      }
    }
    return isPower;
  }
}

// class Solution {
//   bool isPowerOfTwo(int n) {
//    if(n<=0)
//    return false;
//    return(n&(n-1))==0;
//   }
// }

void main() {
  Solution sol = Solution();
  print(sol.isPowerOfFour(63));

  print(10>>1);
}





// class Solution {
//   bool isPowerOfFour(int n) {
//     int nums = 1;
//     while (nums <= n) {
//       if (nums == n) {
//         return true;
//       }
//       nums = nums * 4;
//     }
//     return false;
//   }
// }