import 'dart:io';

void main(List<String> args) {
  print('''This program writes "true" if an input contains numbers 1, 2, 3, 
otherwise the program writes "false"''');
  print('');
  print('Please enter a number:');
  var str = stdin.readLineSync();
  while (str == null || str.isEmpty) {
    print('You haven\'t enter a number. Please try again:');
    str = stdin.readLineSync().toString();
  }
  var str1 = int.tryParse(str);
  while ((str1 == null) || (str == null)) {
    print('You\'ve enter letters. Please enter a number:');
    str = stdin.readLineSync().toString();
    str1 = int.tryParse(str);
  }

  List newList = [];
  for (int i = 0; i < str.length; i++) {
    newList.add(int.parse(str[i]));
  }
  bool list123(List) {
    if (newList.contains(1) && newList.contains(2) && newList.contains(3))
      return true;
    else
      return false;
  }

  print(list123(newList));
}
