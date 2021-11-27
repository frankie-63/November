import 'dart:io';

void main() {
  print('Please enter a number of seconds');
  int numberOfSec1 = int.parse(stdin.readLineSync()!);

  int hours(numberOfSec) => numberOfSec ~/ 3600;
  int minute(numberOfSec) => (numberOfSec % 3600) ~/ 60;
  int seconds(numberOfSec) => (numberOfSec % 60);
  String hMS(numberofSec) {
    return hours(numberofSec).toString() +
        ' h ' +
        minute(numberofSec).toString() +
        ' min ' +
        seconds(numberofSec).toString() +
        ' sec';
  }

  print(hMS(numberOfSec1));
}
