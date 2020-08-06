// import 'lib1.dart' as lib1;
// import 'lib2.dart' as lib2;
import 'lib1.dart' show greet;
import 'lib2.dart' hide greet;

void main() {
  // String greetings = lib1.greet('Kartik');
  // print(greetings);
  // greetings = lib2.greet('Kartik');
  // print(greetings);
  String greetings = greet('Kartik');
  print(greetings);

  greetings = greet1('Kartik');
  print(greetings);
}
