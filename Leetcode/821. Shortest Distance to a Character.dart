class Solution {
  List<int> shortestToChar(String s, String c) {
    int? currentIndex=0;
    List<int> reducedIndex = [];
    List<int> reducedIndexTwo = [];
    List<int> finalOutput = [];
    for (int i = s.length - 1; i >= 0; i--) {
      print(i);
      if (s[i] == c) {
        currentIndex = i;
      }
      reducedIndex.add((currentIndex !- i).abs());
      print(reducedIndex);
    }
    reducedIndex = reducedIndex.reversed.toList();
    print(reducedIndex);
    for (int i = 0; i < s.length; i++) {
      if (s[i] == c) {
        currentIndex = i;
      }
      reducedIndexTwo.add((currentIndex! - i).abs());
      print(reducedIndexTwo);
    }

    for (int i = 0; i < reducedIndexTwo.length; i++) {
      if (reducedIndexTwo[i] == reducedIndex[i]) {
        finalOutput.add(reducedIndexTwo[i]);
      } else if (reducedIndexTwo[i] > reducedIndex[i]) {
        finalOutput.add(reducedIndex[i]);
      } else if (reducedIndexTwo[i] < reducedIndex[i]) {
        finalOutput.add(reducedIndexTwo[i]);
      }
    }
    print(finalOutput);
    return finalOutput;
  }
}

void main() {
  Solution solution = Solution();
  solution.shortestToChar("eeee", "e");
}
