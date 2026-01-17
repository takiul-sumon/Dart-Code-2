class Solution {
  List<String> fizzBuzz(int n) {
    List<String> numbers = [];
    for (int i = 1; i <= n; i++) {
      if (i % 5 == 0 && i % 3 == 0) {
        numbers.add("FizzBuzz");
      } else if (i % 5 == 0) {
        numbers.add('Buzz');
      } else if (i % 3 == 0) {
        numbers.add("Fizz");
      } else {
        numbers.add(i.toString());
      }
    }
    return numbers;
  }
}

void main() {
  Solution solution = Solution();
  solution.fizzBuzz(5);
}
