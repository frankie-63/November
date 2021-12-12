import 'dart:io';

void main(List<String> args) {
  print('''Return true if the given string contains a "bob" string, 
but where the middle 'o' char can be any char.''');
  print('Please enter a string:');
  var str = stdin.readLineSync().toString();
  while (str.isEmpty) {
    print('Please enter a non-empty string or enter "exit" to exit:');
    str = stdin.readLineSync().toString();
    if (str == "exit") exit(0);
  }
  String str1 = str.toLowerCase();
  List newList = [];
  for (var i = 0; i < str1.length; i++) {
    newList.add(str[i]);
  }
  bool bobThere(newList) {
    for (var j = 0; j + 2 < newList.length; j++) {
      if (newList[j] == 'b' && newList[j + 2] == 'b') return true;
    }
    return false;
  }

  print(bobThere(newList));
}
