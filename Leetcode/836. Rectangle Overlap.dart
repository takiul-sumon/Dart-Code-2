class Solution {
  bool isRectangleOverlap(List<int> rec1, List<int> rec2) {
    if (rec1[1] >= rec2[3] ||
        rec2[1] >= rec1[3] ||
        rec1[0] >= rec2[2] ||
        rec2[0] >= rec1[2]) {
      return false;
    }
    return true;
  }
}

void main() {
  Solution solution = Solution();
  solution.isRectangleOverlap([0,0,1,1], [1,0,2,1]);
}
