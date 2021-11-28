import 'dart:io';

void main() {
  print('Please enter a string:');
  String str1 = stdin.readLineSync()!;
  String? str2 = "";
  String? xx;
  int i = 0;

  do {
    xx = str1[i] + str1[i];
    ++i;
    str2 = str2! + xx;
  } while (i < str1.length);

  print(str2);
}
