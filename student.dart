// Class
class Student{
  String? name;
  int? age;
  double averageScore = 0.0;
  String? major; 
  
  Student(this.name, this.age, this.averageScore, this.major){}

  void printScore(){
    print(this.averageScore.toString());
  }

  @override
  String toString() {
    return "I am $name, $age years old.\nMy major is $major and my score is $averageScore";
  }
}