class Solution {
  int removeDuplicates(List<int> nums) {
    int i = 0;
    for (int j = 1; j < nums.length; j++) {
      if (nums[i] != nums[j]) {
        i++;
        nums[i] = nums[j];
      }
    }
    print(i);
    return i + 1;
  }
}

main() {
  Solution sl = Solution();
  sl.removeDuplicates([1, 1, 2]);
  // List<int> m1 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];

  // print(a);

  // print(m1);
}
