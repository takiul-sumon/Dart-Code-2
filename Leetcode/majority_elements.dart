class Solution {
  void majorityElement(List<int> nums) {
    int a = 0;
    int temp;
    List<int> uniqueElement = [];
    List<int> uniqueElementAmount = [];

    List<Map<int, int>> uniqueNumber = [];
    for (int i = 0; i < nums.length; i++) {
      for (int j = i + 1; j < nums.length; j++) {
        if (nums[i] > nums[j]) {
          temp = nums[i];
          nums[i] = nums[j];
          nums[j] = temp;
        }
      }
    }
    for (int i = 0; i < nums.length; i++) {
      if (i == 0 || nums[i] != nums[i - 1]) {
        uniqueElement.add(nums[i]);
      }
    }

    for (int i = 0; i < nums.length; i++) {
      if (uniqueElement[0] == nums[i]) {
        a++;
      }
    }
    print(a);

    //   for (int i = 0; i < uniqueElement.length; i++) {
    //     for (int j = 0; j < nums.length; j++) {
    //       if (uniqueElement[i] == nums[j]) {
    //         uniqueNumber.add(Map<uniqueElement[i]: a++>);

    //     }
    //   }
    //   print(uniqueElement);
    // }
  }
}

main() {
  Solution sol1 = Solution();
  sol1.majorityElement([10, 20, 30, 40, 50, 10, 30]);
}
