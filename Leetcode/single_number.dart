class Solution {
  int singleNumber(List<int> nums) {
    int singleElem = 0;
    nums.sort();
    List<int> stack = [];

    for (int i = 0; i < nums.length; i++) {
      if (stack.isEmpty) {
        stack.add(nums[i]);
      } else if (stack.last == nums[i]) {
        stack.removeLast();
      }
    }
    singleElem = stack.last;

    print(singleElem);
    return singleElem;
  }
}

main() {
  Solution sol1 = Solution();
  sol1.singleNumber([2, 2, 1]);
}
