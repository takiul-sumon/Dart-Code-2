class Solution{
  bool isUgly(int n) {
    // bool isUgly = false;
    // lisOfPrime(n);
    // for (int i = 0; i < list1.length; i++) {
    //   if (list1[i] == 2 || list1[i] == 3 || list1[i] == 5 || list1[i] == 1) {
    //     isUgly = true;
    //   } else {
    //     isUgly = false;
    //   }
    // }
    // if (n == 1) {
    //   isUgly = true;
    // }
    // return isUgly;
    if (n <= 0) return false;
    while (n % 2 == 0) {
      n = n ~/ 2;
    }
    while (n % 3 == 0) {
      n = n ~/ 3;
    }
    while (n % 5 == 0) {
      n = n ~/ 5;
    }
    return n == 1;
  }
}

main() {
  Solution obj1 = Solution();
  print(obj1.isUgly(1));
  // print(obj1.list1);
  // CheckPrime obj2 = CheckPrime();
  // obj2.lisOfPrime(37);
  // print(obj2.list1);
}

// class CheckPrime {
//   List<int> list1 = [];
//   lisOfPrime(int n) {
//     for (int i = 2; i <= n; i++) {
//       if (n % i == 0) {
//         list1.add(i);
//         while (n % i == 0) {
//           n = n ~/ i;
//         }
//       }
//     }
//     if (n != 1) {
//       list1.add(n);
//     }
//   }

//   bool isPrime(int n) {
//     int count = 0;
//     for (int i = 1; i <= n; i++) {
//       if (n % i == 0) {
//         count++;
//       }
//     }
//     if (count == 2) {
//       return true;
//     }
//     return false;
//   }
// }
