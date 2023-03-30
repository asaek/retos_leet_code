void main() {
  print(
    characterReplacement(
      'AABABBA',
      1,
    ),
  );
}

int characterReplacement(String s, int count) {
  List<String> letters = List.generate(26, (i) => String.fromCharCode(i + 65));
  List<String> listS = s.split('');
  int maxRepeat = 0;
  for (var letter in letters) {
    int repeat = 0;
    int j = 0;
    int k = count;
    for (int i = 0; listS.length - 1 > i; i++) {
      if (i > 0) {
        if (listS[i - 1] != letter) {
          k = k + 2;
        }
      }
      while (k >= 0 && listS.length > j) {
        if (letter == listS[j]) {
          j++;
        } else if (letter != listS[j]) {
          if (k > 0) {
            k--;
            j++;
          } else {
            k--;
          }
        }
      }
      repeat = listS.getRange(i, j).length;
      repeat > maxRepeat ? maxRepeat = repeat : maxRepeat;
    }
  }
  return maxRepeat;
}



// int characterReplacement(String s, int k) {
//   int longitud = 0;
//   for (int i = 0; i < s.length - 1; i++) {
//     if (s[i] == s[i + 1]) {
//       longitud++;
//     } else if (s[i] != s[i + 1] && k != 0) {
//       k--;
//       longitud++;
//     }
//   }
//   return longitud;
// }
