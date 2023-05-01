import 'location.dart';
import 'student.dart';
import 'shape.dart';
import 'circle.dart';
import 'rectangle.dart';
import 'triangle.dart';

/**Starting Point */
void main() {
  /** Variable */
  int year = 2023; // explicitly typed int
  var month = 05; // inferred int created with var
  double day; // day = null
  dynamic numberDynamic; // dynamic variable
  numberDynamic = '5'; // dynamic String
  numberDynamic = 1.1; // dynamic double
  bool isExist = true; // explicitly typed boolean

  /**Constants */
  const hourInDay = 24; // Compile-time constants
  // hourInDay = 23; // cannot assign to the const variable
  final age = 22; // Immutables with final
  // age = 24; // cannot assign to the final variable
  // constants have required init value and final have

  /**Conditional Expressions */
  var hero = 'Superman';
  if (hero == 'Batman' || hero == 'Flash') {
    print('No, I don\'t like this hero');
  } else if (hero == 'Joker' || hero == 'Superman') {
    print('Yeah, I am a big fan of this hero');
  } else {
    print('Noooo');
  }

  switch (hero) {
    case 'Superman':
    case 'Joker':
      print('Yeah, I am a big fan of this hero');
      break;
    case 'Batman':
    case 'Flash':
      print('No, I don\'t like this hero');
      break;
    default:
      print('Noooo');
  }

  /** Loops */
  for (int i = 0; i < 100; i++) {
    print('I love coding');
  }

  final characters = ['a', 'b', 'c', 'd', 'e', 'f'];
  for (final i in characters) {
    print(i);
  }

  final numbers = [1, 2, 3, 4, 5, 6, 7];
  numbers.forEach((element) {
    print(element);
  });
  // or
  numbers.forEach(print);

  int i = 100;
  while (i < 105) {
    print(i);
    i++;
  }

  i = 100;
  do {
    print(i);
    i++;
  } while (i < 105);

  /** String Interpolation */
  int v = 12;
  int p = 14;
  print('${v + p}');
  print('$v$p');

  /** Parsing */
  var s1 = '456';
  var s2 = '12.11';
  var s3 = '12.aaaa';
  var s4 = 1214;
  print(int.parse(s1));
//   print(int.parse(s2)); // cannot convert to int
  print(double.parse(s2));
  print(double.parse(s1));
//   print(int.parse(s3)); // cannot convert to int
  print(int.tryParse(s3)); // null
  print(s4.toString());
  print(s4.runtimeType); // type: int
  print(s4.toString().runtimeType); // type: String

  /** Null-aware Operators */
  int y; // value = null
  int? a = 1; // variable a can null

  /** Functions */
  // Named Function
  String sayHello() {
    String fullName = 'Nguyen Trong Phuc';
    return fullName;
  }

  print(sayHello());

  int lengthOfText(String text) {
    return text.length;
  }

  print(lengthOfText('Nguyen Trong Phuc'));

  // Arrow Syntax Function
  int sum(int a, int b) => a + b;
  print(sum(12, 14));

  // Lamda Function
  var list = [1, 2, 3, 4, 5, 6, 7];
  var odds = list.where((element) => element % 2 > 0);
  print(odds);

  /** Collections */
  /** List */
  // dynamic list
  var countryList = ['Viet Nam', 'Nhat Ban', 'German', 'France'];
  print(countryList.length); // 4
  countryList.add('England');
  countryList.removeAt(2);
  countryList.remove('France');
  print(countryList.isNotEmpty); // true
  print(countryList.last); // England
  print(countryList.first); // Viet Nam
  print(countryList);

  var listSmall = [1, 2, 3];
  List listBig = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  listBig.addAll(listSmall);
  print(listBig); // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3]
  /** Set */
  var anotherSet = {12, 14, 20, 01};
  print('${anotherSet.contains(10)}'); // false
  /** Map */
  final student = {'id': 1, 'fullName': 'Nguyen Trong Phuc', 'age': 22};
  print(student);
  print(student['fullName']);
  student.forEach((key, value) {
    print('$key - $value');
  });

  /*** OOP */
  Student std1 = Student(student['fullName'].toString(), 22, 3.2,
      'Data communication and computer network');
  print(std1
      .toString()); //My major is Data communication and computer network and my score is 3.2

  Rectangle rectangle = Rectangle(20, 100);
  rectangle.tinhChuVi();
  rectangle.tinhDienTich();

  Circle circle = Circle(2.5);
  circle.tinhChuVi();
  circle.tinhDienTich();

/** Getter and Setter */
  Location location = Location(23.111, 111.23);
  print(location.latitude);
  print(location.longitude);
  print(location.toString()); // (23.111, 111.23)
  location.latitude = 100;
  print(location.latitude);
  print(location.toString()); // (100.0, 111.23
}
