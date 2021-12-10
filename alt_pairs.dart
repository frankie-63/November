import 'dart:io';

void main(List<String> args) {
  print('''Given a string, return a string made of the chars at indexes 
  0,1, 4,5, 8,9 ... ''');
  print('Please enter a non-empty string:');
  var str1 = stdin.readLineSync().toString();
  while (str1.isEmpty) {
    print('You\'ve enter an empty string. Please try again:');
    str1 = stdin.readLineSync().toString();
  }
  List<String> newList1 = [];
  int j = 1;
  int i = 0;
  if (str1.length.isEven) {
    for (i; i < str1.length && j < str1.length; i += 4, j += 4) {
      newList1.add(str1[i] + str1[j]);
    }
  } else {
    for (i; i < str1.length && j < str1.length; i += 4, j += 4) {
      newList1.add(str1[i] + str1[j]);
    }
    newList1.add(str1[i]);
  }
  String str2 = newList1.join();

  print(str2);
}
