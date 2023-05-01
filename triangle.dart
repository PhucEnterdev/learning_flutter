import 'dart:math';

import 'shape.dart';

class Triangle implements Shape{
  double a = 0.0;
  double b = 0.0;
  double c = 0.0;

  Triangle(this.a, this.b, this.c);
  
  @override
  void tinhChuVi() {
    double p = a+b+c;
    print('Chu vi tam giac thuong la : $p');
  }
  
  @override
  void tinhDienTich() {
    double p = a+b+c;
    double s = sqrt(p*(p-a)*(p-b)*(p-c));
    print('Chu vi tam giac thuong la : $s');
  }


}