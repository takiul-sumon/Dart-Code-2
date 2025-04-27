//for sorted number
// class Solution {
//   List pairSum(List<int> nums, int target) {
//     nums.sort();
//     List<int> sum = [];
//     int n = nums.length;
//     int i = 0, j = n - 1;

//     while (i < j) {
//       int pairSum = nums[i] + nums[j];
//       if (pairSum > target) {
//         j--;
//       } else if (pairSum < target) {
//         i++;
//       } else {
//         sum.add(i);
//         sum.add(j);
//         return sum;
//       }
//     }
//     return sum;
//   }
// }

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    List<int> sum = [];
    int n = nums.length;
    for (int i = 0; i < n; i++) {
      for (int j = i + 1; j < n; j++) {
        if (nums[i] + nums[j] == target) {
          sum.add(i);
          sum.add(j);
          return sum;
        } 
      }
    }
    return sum;
  }
}

main() {
  Solution sol = Solution();
  sol.twoSum([10, 20, 30, 50], 80);
  print(sol.twoSum([10, 20, 30, 50], 80));
}
