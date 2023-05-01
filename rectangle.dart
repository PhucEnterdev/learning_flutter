import 'shape.dart';

class Rectangle implements Shape{
  double dai = 0.0;
  double rong = 0.0;

  Rectangle(this.dai, this.rong);
  
  @override
  void tinhChuVi() {
    double p = (dai + rong) * 2;
    print('Chu vi hinh chu nhat la : $p');
  }
  
  @override
  void tinhDienTich() {
    double s = dai * rong;
    print('Chu vi hinh chu nhat la : $s');
  }
}