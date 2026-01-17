void main() {
  Solution solution = Solution();
  solution.countPrimes(10);
  print(solution.countPrimes(10));
}

// class Solution {
//   int countPrimes(int n) {
//     int numberOfPrime = 0;
//     for (int i = 2; i <= n; i++) {
//       if (i < 2) {
//       } else if (checkPrime(i) == true) {
//         numberOfPrime++;
//       }
//     }
//     print(numberOfPrime);
//     return numberOfPrime;
//   }

//   bool checkPrime(n) {
//     for (int i = 2; i * i < n; i++) {
//       if (n % i == 0) {
//         return false;
//       }
//     }
//     return true;
//   }
// }

class Solution {
  int countPrimes(int n) {
    if (n <= 2) return 0;
    List<bool> isPrime = List.filled(n, true);
    isPrime[0] = false;
    isPrime[1] = false;
    for (int i = 2; i*i < n; i++) {
      if (isPrime[i]) {
        for (int j = i * i; j < n; j = j + i) {
          isPrime[j] = false;
        }
      }
    }
    int count = 0;
    for (int i = 2; i < n; i++) {
      if (isPrime[i]) count++;
    }
    return count;
  }
}
