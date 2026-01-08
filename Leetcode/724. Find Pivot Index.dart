void main() {
  Solution solution = Solution();
  solution.pivotIndex([1, 7, 3, 6, 5, 6]);
}

class Solution {
  int pivotIndex(List<int> nums) {
    int sum = 0;
    int leftSum = 0;
    int rightSum;
    int index = 0;
    for (int i = 0; i < nums.length; i++) {
      sum += nums[i];
    }
    print(sum);
    for (int i = 0; i < nums.length; i++) {
      rightSum = sum - leftSum - nums[i];
      print(rightSum);
      if (leftSum == rightSum) {
        return i;
      }
      leftSum += nums[i];
      print(leftSum);
    }
    return -1;
  }
}
