class Solution {
  int removeElement(List<int> nums, int val) {
    nums.removeWhere((element) => element == val);
    return nums.length;
  }
}

void main(List<String> args) {
  Solution obj1 = Solution();
  obj1.removeElement([3, 2, 2, 3], 3);
}
