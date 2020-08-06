import 'dart:math';

/// DOG is-a ANIMAL
/// PETROL is-a ANIMAL

class Animal {
  final String color;
  final double weight;

  Animal(this.color, this.weight);

  String get getUniqueName => "animal";
}

class Elephant extends Animal {
  final bool haveTeeth;

  Elephant(this.haveTeeth, String color, double weight) : super(color, weight);

  String get getUniqueName => "elephant";

  void printData() {
    print(this.getUniqueName);
    print(super.getUniqueName);

    // print(this.haveTeeth);
    // print(super.color);
  }
}

class Cat extends Animal {
  double speed;

  Cat(this.speed, String color, double weight) : super(color, weight);

  String get getUniqueName => "cat";
}

void main() {
  Elephant elephant = new Elephant(true, "black", 400);
  elephant.printData();

  // Cat cat = new Cat();

  // Animal animal = new Animal();

  // Animal elephant1 = new Elephant();
  // print(elephant1.getUniqueName);

  // Animal cat1 = new Cat();
  // print(cat1.getUniqueName);

  // Object elephant2 = new Elephant();
  // Object cat2 = new Cat();
}
