void main() {
  Solution solution = Solution();
  solution.thirdMax([3,2,2,1]);
}

class Solution {
  int thirdMax(List<int> nums) {
    List<int> unqiueNumber = [];
    for (int i = 0; i < nums.length; i++) {
      if (!unqiueNumber.contains(nums[i])) {
        unqiueNumber.add(nums[i]);
      }
    }
    unqiueNumber.sort();
    
    List<int> reverseList = unqiueNumber.reversed.toList();
    print(reverseList);
    if (reverseList.length > 2) {
      print(reverseList[2]);
      return reverseList[2];
    } else {
      print(reverseList.first);
      return reverseList.first;
    }
  }
}
