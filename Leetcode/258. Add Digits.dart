class Solution {
  int addDigits(int num) {
    List<int> newList = num.toString()
        .split('')
        .map((e) => int.parse(e))
        .toList();
    int length = newList.length;
    while (length >= 2) {
      int sum = 0;
      for (var c in newList) {
        sum += c;
      }
      print(sum);
      newList = sum.toString().split('').map((e) => int.parse(e)).toList();
      length = newList.length;
    }
    return newList[0];
  }
}

void main() {
  Solution solution = Solution();
  solution.addDigits(38);
}
