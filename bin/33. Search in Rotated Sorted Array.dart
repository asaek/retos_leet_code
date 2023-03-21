void main() {
  print(search(
    [4, 5, 6, 7, 0, 1, 2],
    0,
  ));
}

int search(List<int> nums, int target) {
  int izquierda = 0;
  int derecha = nums.length - 1;

  while (izquierda <= derecha) {
    int enMedio = (izquierda + derecha) ~/ 2;
    if (nums[enMedio] == target) {
      return enMedio;
    }
    if (nums[enMedio] >= nums[izquierda]) {
      if (nums[izquierda] <= target && target < nums[enMedio]) {
        derecha = enMedio - 1;
      } else {
        izquierda = enMedio + 1;
      }
    } else {
      if (nums[enMedio] < target && target <= nums[derecha]) {
        izquierda = enMedio + 1;
      } else {
        derecha = enMedio - 1;
      }
    }
  }

  return -1;
}
