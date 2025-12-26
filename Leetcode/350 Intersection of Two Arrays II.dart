void main() {
  Solution sol = Solution();
  sol.intersect([1, 2, 2, 1], [1, 2]);
}

class Solution {
  List<int> intersect(List<int> nums1, List<int> nums2) {
    List<int> commomNumber = [];
    Map<int, int> freq = {};
    for (int num in nums1) {
      freq[num] = (freq[num] ?? 0) + 1;
    }
    for (int num in nums2) {
      if (freq.containsKey(num) && freq[num]! > 0) {
        commomNumber.add(num);
        freq[num] = freq[num]! - 1;
      }
    }
    print(commomNumber);
    return commomNumber;
  }
}
