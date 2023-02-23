import 'dart:collection';
import 'dart:math';

void main() {
  print(
    carFleet(
      12,
      [10, 8, 0, 5, 3],
      [2, 4, 1, 1, 3],
    ),
  );
}

int carFleet(int target, List<int> position, List<int> speed) {
  int resultado = 0;
  List<double> turnosFaltantes = List.generate(target, (index) => 0);
  for (int i = 0; i < position.length; i++) {
    turnosFaltantes[position[i]] = (target - position[i]) / speed[i];
  }
  double ultimaFlota = 0.0;
  for (int i = target - 1; i >= 0; i--) {
    double cur = turnosFaltantes[i];
    if (cur > ultimaFlota) {
      ultimaFlota = cur;
      resultado++;
    }
  }
  return resultado;
}
