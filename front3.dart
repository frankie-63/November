import 'dart:io';

void main() {
  print('Enter a string');
  var str = stdin.readLineSync()!;
  var first3Chars = '';
  if (str.length >= 3) {
    first3Chars = str.substring(0, 3);
    print(first3Chars * 3);
  } else if (str.length == 2) {
    first3Chars = str.substring(0, 2);
    print(first3Chars * 3);
  } else if (str.length == 1) {
    first3Chars = str[0];
    print(first3Chars * 3);
  } else
    (print('You didn\'t enter a string'));
}
