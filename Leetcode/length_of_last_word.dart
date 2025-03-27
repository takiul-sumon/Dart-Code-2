class Solution {
  lengthOfLastWord(String s) {
    List<String> word = s.split(" ");
    word.removeWhere((element) {
      return element == "";
    });
    
    return word.last.length;
  }
}

void main(List<String> args) {
  Solution obj1 = Solution();
  obj1.lengthOfLastWord('fly me   to   the moon   ');
}
