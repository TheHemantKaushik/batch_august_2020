import 'person.dart';

void main() {
  Person person = new Person("01");

  // person.id = "01";
  person.name = "John";

  person.doWork();

  person.id;
  person.uniqueId;
  person.getId();
}
