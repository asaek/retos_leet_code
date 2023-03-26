import 'dart:math';

void main() {
  print(
    maxProfit(
      [7, 1, 5, 3, 6, 4],
    ),
  );
}

int maxProfit(List<int> prices) {
  int min = prices[0];
  int max = 0;
  for (int i = 0; i < prices.length; i++) {
    min = prices[i] < min ? prices[i] : min;
    max = max > (prices[i] - min) ? max : (prices[i] - min);
  }
  return max;
}



// int maxProfit(List<int> prices) {
//   if (prices.length == 1) return 0;
//   int ventaMayor = 0;

//   // prices = List<int>.from(prices.toSet().toList());

//   while (prices.length > 1) {
//     final minimoCompraValor = prices.reduce(min);
//     final minimoSlot = prices.indexOf(minimoCompraValor);

//     int ventaMayorTemporal = minimoCompraValor;
//     for (int i = minimoSlot; i < prices.length; i++) {
//       if (ventaMayorTemporal < prices[i]) {
//         ventaMayorTemporal = prices[i];
//       }
//     }

//     prices.removeAt(minimoSlot);
//     final ventaTotalCiclo = ventaMayorTemporal - minimoCompraValor;
//     if (ventaMayor < ventaTotalCiclo) {
//       ventaMayor = ventaTotalCiclo;
//     }
//   }

//   return ventaMayor;
// }