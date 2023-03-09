void main() {
  print(search([-1, 0, 3, 5, 9, 12], 9));
}

int search(List<int> nums, int target) {
  int left = 0, right = nums.length - 1;
  while (left <= right) {
    int m = (left + (right - left) / 2).toInt();
    print(m);
    if (nums[m] == target) return m;
    if (nums[m] < target)
      left = m + 1;
    else
      right = m - 1;
  }
  // return nums.indexOf(target);
  return -1;
}
