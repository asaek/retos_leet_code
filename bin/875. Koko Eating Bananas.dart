import 'dart:math';

void main() {
  print(
    minEatingSpeed(
      [3, 6, 7, 11],
      8,
    ),
  );
}

// int minEatingSpeed(List<int> piles, int h) {
//   int minK = 1;
//   int maxk = piles.reduce(max);

//   return 10;
// }

int minEatingSpeed(List<int> piles, int h) {
  int minK = 1;
  int maxK = piles.reduce(max);

  while (minK <= maxK) {
    int middle = (minK + maxK) ~/ 2;

    int hours = 0;
    for (int pile in piles) {
      hours += pile ~/ middle;
      // final rest = pile % middle;
      // print(rest);
      // print(pile % middle);

      hours += pile % middle == 0 ? 0 : 1;

      // print(hours);
    }

    if (hours <= h) {
      maxK = middle - 1;
    } else {
      minK = middle + 1;
    }
  }

  return minK;
}
