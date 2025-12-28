class Solution {
  List<String> findRelativeRanks(List<int> score) {
    List<int> sortedList = List.from(score);
    sortedList.sort();
    sortedList = sortedList.reversed.toList();
    List<String> ranks = ["Gold Medal", "Silver Medal", "Bronze Medal"];
    Map<int, String> ranksOrder = {};
    for (int i = 0; i < sortedList.length; i++) {
      if (i < 3) {
        ranksOrder[sortedList[i]] = ranks[i];
      } else {
        ranksOrder[sortedList[i]] = (i + 1).toString();
      }
    }
    List<String> originalRank = [];
    for (int s in score) {
      originalRank.add(ranksOrder[s]!);
    }
    print(originalRank);

    return originalRank;
  }
}

void main() {
  Solution sol = Solution();
  sol.findRelativeRanks([10,3,8,9,4]);
}


// List<String>