class Solution {
  void moveZeroes(List<int> nums) {
    int temp;
    for (int i = 0; i <= nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] == 0) {
          temp = nums[i];
          nums[i] = nums[j];
          nums[j] = temp;
        }
      }
    }
    print(nums);
  }
}

void main() {
  Solution sol = Solution();
  sol.moveZeroes([0]);
}
// temp = newList[i];
//           newList[i] = newList[j];
//           newList[j] = temp;