import 'package:test/expect.dart';

void main() {
  print(
    searchMatrix([
      [1],
      [3],
    ], 0),
  );
}

bool searchMatrix(List<List<int>> matrix, int target) {
  for (int i = 0; i < matrix.length; i++) {
    final ultimoNUmero = matrix[i][matrix[i].length - 1];
    if (target <= ultimoNUmero) {
      for (int ii = 0; ii < matrix[i].length; ii++) {
        if (target == matrix[i][ii]) {
          return true;
        }
      }
    }
  }

  return false;
}
