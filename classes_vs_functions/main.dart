void myFun() {}

class MyFun {
  int value = 10;

  void myFun() {
    //int value = 20;

    this.value;
    value;
  }
}

class Alarm {
  final int year;
  final int month;
  final int day;
  final int hours;
  final int minutes;
  final int seconds;

  // Alarm(
  //   this.year,
  //   this.month,
  //   this.day,
  //   this.hours,
  //   this.minutes,
  //   this.seconds,
  // );

  Alarm({
    this.year,
    this.month,
    this.day,
    this.hours = 0,
    this.minutes = 0,
    this.seconds = 0,
  });
}

// class Alarm {
//   final DateTime dateTime;

//   const Alarm(this.dateTime);
// }

void main() {
  MyFun f1 = new MyFun();
  f1.myFun();
  myFun();

  // Alarm a = new Alarm(DateTime.now());

  // Alarm a2 = new Alarm(2020, 09, 09, 11, 11, 11);

  Alarm a3 = new Alarm(
    year: 2020,
    minutes: 11,
    month: 09,
    hours: 11,
    day: 09,
    // seconds: 11,
  );
}
