void main() {
  Student kartik = new Student();
  kartik.rollNumber = 1;
  print(kartik.rollNumber);

  Student harsh = new Student();
  harsh.rollNumber = 2;
  print(harsh.rollNumber);
}

class Student {
  int rollNumber;
  String name;
  int standard;
  String address;
}

class Person {}
