void main() {
  print(findMedianSortedArrays(
    [1, 3],
    [2, 7],
  ));
}

double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
  // List<int> listaUnida =
  //     List.generate((nums1.length + nums2.length), (index) => 0);
  List<int> listaUnida = [];
  int contadorListaUnida = 0;
  int tamanoListaUnida = nums1.length + nums2.length;
  double mediana = 0;

  while (contadorListaUnida < tamanoListaUnida) {
    if (nums1.isNotEmpty && nums2.isNotEmpty) {
      if (nums1[0] < nums2[0]) {
        listaUnida.add(nums1.removeAt(0));
        contadorListaUnida++;
      } else if (nums1[0] > nums2[0]) {
        listaUnida.add(nums2.removeAt(0));
        contadorListaUnida++;
      } else {
        listaUnida.add(nums1.removeAt(0));
        listaUnida.add(nums2.removeAt(0));
        contadorListaUnida += 2;
      }
    } else {
      if (nums1.isEmpty) {
        contadorListaUnida += nums2.length;
        listaUnida.addAll(nums2);
      } else {
        contadorListaUnida += nums1.length;
        listaUnida.addAll(nums1);
      }
    }
  }
  if (listaUnida.isEmpty) {
    return 0;
  }

  if (listaUnida.length % 2 == 0) {
    mediana = (listaUnida[listaUnida.length ~/ 2 - 1] +
            listaUnida[listaUnida.length ~/ 2]) /
        2.0;
  } else {
    mediana = listaUnida[listaUnida.length ~/ 2].toDouble();
  }
  return mediana;
}
