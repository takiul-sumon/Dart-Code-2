// class Solution {
//   void merge(List<int> nums1, int m, List<int> nums2, int n) {
//     List<int> newList = [];
//     int temp;
//     newList.addAll(nums1);
//     newList.addAll(nums2);
//     newList.removeWhere((element) => element == 0);
//     for (int i = 0; i < newList.length; i++) {
//       for (int j = i + 1; j < newList.length; j++) {
//         if (newList[i] > newList[j]) {
//           temp = newList[i];
//           newList[i] = newList[j];
//           newList[j] = temp;
//         }
//       }
//     }
//     nums1 = newList;
//     return nums1;
//   }
// }

void main() {
  Solution obj1 = Solution();
  obj1.merge([-1, -1, 0, 0, 0, 0], 4, [-1, 0], 2);
}

class Solution {
  void merge(List<int> nums1, int m, List<int> nums2, int n) {
    print(nums1.length);
    int j = nums2.length - 1;
    if (m == 0) {
      nums1.addAll(nums2);
      nums1.removeWhere((element) => element == 0);
    } else if (n == 0) {
    } else {
      for (int i = m; i < nums1.length; i++) {
        nums1[i] = nums2[j];
        j--;
      }
    }
    nums1.sort();
    print(nums1);
  }
}
// [-1, -1, 0, 0, 0, 0], 4, [-1, 0], 2)
// class Solution {
//   void merge(List<int> nums1, int m, List<int> nums2, int n) {
//     bool hasZero = false;
//     int numberOfMinus = 0;

//     if (m == 0) {
//       nums1.clear();
//     } else {
//       int i = nums1.length - 1;
//       while (hasZero != true) {
//         if (nums1[i] == 0) {
//           nums1.removeAt(i);
//         } else {
//           hasZero = true;
//         }
//         i--;
//       }
//     }

//     for (int i = 0; i < nums2.length; i++) {
//       if (nums2[i] == 0) {
//         nums2.removeAt(i);
//       }
//     }

//     print(nums2);

//     nums1.addAll(nums2);
//     print(nums1);
//     int temp;

//     for (int i = 0; i < nums1.length; i++) {
//       for (int j = i + 1; j < nums1.length; j++) {
//         if (nums1[i] > nums1[j]) {
//           temp = nums1[i];
//           nums1[i] = nums1[j];
//           nums1[j] = temp;
//         }
//       }
//     }
//     print(nums1);
//     if (nums1.length == 2) {
//       nums1.removeWhere((element) => element == 0);
//     }

//     for (int i in nums1) {
//       if (i < 0) {
//         numberOfMinus++;
//       }
//     }
//     print(numberOfMinus);
//     if (numberOfMinus != 0) {
//       for (int i = 0; i < numberOfMinus; i++) {
//         nums1.add(0);
//       }
//     }
//     print(nums1);
//   }
// }
