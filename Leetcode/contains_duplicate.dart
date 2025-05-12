class Solution {
  bool containsDuplicate(List<int> nums) {
    nums.sort();

    for (int i = 1; i < nums.length; i++) {
      if (nums[i] == nums[i - 1]) {
        return true;
      }
    }
    return false;
  }
}

void main(List<String> args) {
  Solution sol1 = Solution();
  sol1.containsDuplicate([1, 2, 3]);
  print(sol1.containsDuplicate([1, 2, 3]));
}
