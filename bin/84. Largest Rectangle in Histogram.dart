import 'dart:math';

void main(List<String> args) {
  print(largestRectangleArea(
    [2, 1, 2],
  ));
}

int largestRectangleArea(List<int> heights) {
  if (heights.length == 0) return 0;
  int volumen = 0;

  List<int> desdeIzquierda = List.generate(heights.length, (index) => 0);
  List<int> desdeDerecha = List.generate(heights.length, (index) => 0);

  desdeDerecha[heights.length - 1] = heights.length;

  desdeIzquierda[0] = -1;

  for (int i = 1; i < heights.length; i++) {
    int p = i - 1;
    while (p >= 0 && heights[p] >= heights[i]) {
      p = desdeIzquierda[p];
    }
    desdeIzquierda[i] = p;
  }

  for (int i = heights.length - 2; i >= 0; i--) {
    int p = i + 1;
    while (p < heights.length && heights[p] >= heights[i]) {
      p = desdeDerecha[p];
    }
    desdeDerecha[i] = p;
  }
  for (int i = 0; i < heights.length; i++) {
    volumen =
        max(volumen, heights[i] * (desdeDerecha[i] - desdeIzquierda[i] - 1));
  }
  return volumen;
}
