import 'dart:io';

///this function was rewrited from its java version
void main() {
  int last2(String str) {
    if (str.length < 2) return 0;

    String end = str.substring(str.length - 2);
    int count = 0;

    for (int i = 0; i < str.length - 2; i++) {
      String sub = str.substring(i, i + 2);
      if (sub == end) {
        count++;
      }
    }
    return count;
  }

  ///I writed this block of code by myself:
  print('Please enter a non-empty string:');
  var str1 = stdin.readLineSync().toString();
  while (str1.isEmpty) {
    print('You\'ve enter an empty string. Please try again:');
    str1 = stdin.readLineSync().toString();
  }
  print(last2(str1));
}
