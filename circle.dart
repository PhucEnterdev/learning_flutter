import 'dart:math';

import 'shape.dart';

class Circle implements Shape{
  double banKinh = 0.0;

  Circle(this.banKinh);
  
  @override
  void tinhChuVi() {
    double p = 2*banKinh*pi;
    print("Chu vi hinh tron la : $p");
  }
  
  @override
  void tinhDienTich() {
    double s = banKinh*banKinh*pi;
    print("Dien tich hinh tron la : $s");
  }

}