void main() {
  print(
    lengthOfLongestSubstring(
      'abcabcbb',
    ),
  );
}

int lengthOfLongestSubstring(String s) {
  List<String> currentSubstring = [];
  int longestSubstringLength = 0;
  for (var word in s.split('')) {
    if (currentSubstring.contains(word)) {
      currentSubstring =
          currentSubstring.sublist(currentSubstring.indexOf(word) + 1);
    }
    currentSubstring.add(word);
    if (currentSubstring.length > longestSubstringLength) {
      longestSubstringLength = currentSubstring.length;
    }
  }
  return longestSubstringLength;
}




// int lengthOfLongestSubstring(String s) {
//   List<String> cadena = [];

//   for (int i = 0; i < s.length - 1; i++) {
//     if (s[i] != s[i + 1]) {
//       print('S: ${s[i]}  S + 1: ${s[i + 1]}');
//       if (!cadena.contains(s[i])) {
//         cadena.add(s[i]);
//       }
//     }
//   }

//   if (cadena.isEmpty) cadena.add(s[0]);
//   print(cadena.join(''));
//   return cadena.join('').length;
// }