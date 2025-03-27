class Solution {
  int searchInsert(List<int> nums, int target) {
    int left = 0;
    int right = nums.length - 1;

    while (left <= right) {
      int mid = (left + (right - left) / 2).floor();
      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    print(left);
    return left;
  }
}

void main(List<String> args) {
  Solution obj1 = Solution();
  obj1.searchInsert([1, 3, 5, 6], 5);
}


// class Solution {
//   int searchInsert(List<int> nums, int target) {
//     int k = 0;

//     for (int i = nums.length - 1; i > 0; i--) {
//       if (nums[i] > target) {
//         if (nums[i - 1] < target) {
//           k = i;
//         }
//       } else if (nums[i] < target) {
//         k = nums.length;
//       } else if (nums[0] < target) {
//         k = nums.length;
//       }
//     }
//     for (int i = 0; i < nums.length; i++) {
//       if (nums[i] == target) {
//         k = i;
//       }
//     }

//     print(k);
//     return k;
//   }
// }