// class Solution {
//   int majorityElement(List<int> nums) {
//     int majorityElement = 0;
//     int a = 0;
//     for (int i = 0; i < nums.length; i++) {
//       int freqnuency = 1;
//       for (int j = i + 1; j < nums.length; j++) {
//         if (nums[i] == nums[j]) {
//           freqnuency++;
//         }
//       }
//       if (freqnuency > nums.length / 2) {
//         majorityElement = nums[i];
//       }
//     }
//     print(majorityElement);
//     return majorityElement;
//   }
// }

// class Solution {
//   int majorityElement(List<int> nums) {
//     int frequnecy = 1;
//     int majorityNumber = nums[0];
//     nums.sort();
//     int n = nums.length;
//     for (int i = 1; i < n; i++) {
//       if (nums[i] == nums[i - 1]) {
//         frequnecy++;
//       } else {
//         frequnecy = 1;
//         majorityNumber = nums[i];
//       }
//       if (frequnecy > n / 2) {
//         return majorityNumber;
//       }
//     }
//     print(majorityNumber);
//     return majorityNumber;
//   }
// }

main() {
  Solution sol1 = Solution();
  sol1.majorityElement([-1, 1, 1, 1, 2, 1]);
}

//Moris Voting Alogirithom
class Solution {
  int majorityElement(List<int> nums) {
    int freq = 0;
    int ans = 0;
    for (int i = 0; i < nums.length; i++) {
      if (freq == 0) {
        ans = nums[i];
      }
      if (ans == nums[i]) {
        freq++;
      } else {
        freq--;
      }
    }
    int count = 0;
    for (int i = 0; i < nums.length; i++) {
      if (nums[i] == ans) {
        count++;
      }
    }
    if (count > (nums.length / 2)) {
      return ans;
    } else
      return -1;
    
  }
}
