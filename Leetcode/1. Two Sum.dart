
class Solution {
  List<int> twoSum(List<int> nums, int target) {
    final Map<int, int> seen = {};
    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];
      if (seen.containsKey(complement)) {
        return [seen[complement]!, i];
      }
      seen[nums[i]] = i;
      print(seen);
    }
    return [];
  }
}

main() {
  Solution sol = Solution();
  sol.twoSum([3, 2, 4], 6);
}
