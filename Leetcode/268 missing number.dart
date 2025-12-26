class Solution {
  int missingNumber(List<int> nums) {
    nums.sort();
    int maxValue = nums.length - 1;
    int missingValue = 0;
    for (int i = 0; i <nums.length+1; i++) {
      if (!nums.contains(i)) {
        missingValue = i;
      } else {}
    }
    print(nums);
    print(missingValue);
    return missingValue;
  }
}

void main() {
  Solution solution = Solution();
  solution.missingNumber([3,0,1]);
}
