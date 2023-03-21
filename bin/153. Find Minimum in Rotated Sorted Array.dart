import 'dart:math';

void main() {
  print(
    findMin(
      [3, 4, 5, 1, 2],
    ),
  );
}

int findMin(List<int> nums) {
  return nums.reduce(min);
}

class Solution {
  int findMin(List<int> nums) {
    var l = 0;
    var r = nums.length - 1;

    while (nums[l] > nums[r]) {
      var mid = (l + r) ~/ 2;

      if (nums[r] < nums[mid]) {
        l = mid + 1;
      } else {
        r = mid;
      }
    }

    return nums[l];
  }
}
