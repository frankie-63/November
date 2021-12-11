import 'dart:io';

void main(List<String> args) {
  print('''User inputs an list of integers,
we'll say that a triple is a value appearing 3 times in a row in the list. 
Return true if the list does not contain any triples.''');
  print("Please enter some numbers");
  var strNum = stdin.readLineSync().toString();
  var str1 = int.tryParse(strNum);
  while (str1 == null) {
    print('You\'ve enter letters. Please enter a number:');
    strNum = stdin.readLineSync().toString();
    str1 = int.tryParse(strNum);
  }
  List listNum = <int>[];
  for (int i = 0; i < strNum.length; i++) {
    listNum.add(int.parse(strNum[i]));
  }
  int count = 0;
  bool noTripples(listNum) {
    for (int j = 0; j + 2 < listNum.length; j++) {
      if (listNum[j] == listNum[j + 1] && listNum[j + 2] == listNum[j + 1]) {
        count++;
      }
    }
    if (count == 0)
      return true;
    else
      return false;
  }

  print(noTripples(listNum));
}
