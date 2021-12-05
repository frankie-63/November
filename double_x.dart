import 'dart:io';

void main(List<String> args) {
  bool doubleX(String str) {
    if (str.toLowerCase().startsWith('xx'))
      return true;
    else
      return false;
  }

  print('Please enter a string:');
  var str1 = stdin.readLineSync();
  if (str1 != null) {
    print(doubleX(str1));
  } else
    print('You haven\'t enter a string');
}
