import 'dart:io';

void main(List<String> args) {
  String stringTimes(String str, int number) {
    return str * number;
  }

  print('Enter a string');
  var str1 = stdin.readLineSync();
  print('Enter a natural number');
  var str2 = stdin.readLineSync();
  int number1 = 0;
  if (str2 != null) {
    number1 = int.parse(str2);
  } else {
    number1 = 0;
  }
  if (str1 != null && number1 > 0) {
    print(stringTimes(str1, number1));
  } else {
    print('You\'ve entered an incorrect string or number');
  }
}
