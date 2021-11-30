import 'dart:io';

void main() {
  print('Enter a string:');
  String str = stdin.readLineSync()!;
  Map mapStr = <int, String>{};
  int j = 1;
  for (int i = 0; i < str.length; ++i) {
    if ((str[i] == 'c') && (str[i + 1] == 'o') && (str[i + 3] == 'e')) {
      mapStr[j] = str.substring(i, i + 4);
      ++j;
    } else
      ;
  }
  print(mapStr);
  print(mapStr.length);
}
