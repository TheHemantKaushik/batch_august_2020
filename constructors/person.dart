class Person {
  // String id;
  final String id;
  String name;

  // Person(String id) {
  //   this.id = id;
  // }

  // Person(String id) : this.id = id;

  // Person(String id, String name)
  //     : this.id = id,
  //       this.name = name;

  Person(this.id);

  // Person(this.id, this.name);

  String get uniqueId => "unique_id_" + this.id;

  void doWork() {
    int idInt = int.parse(id);

    print("$idInt " + this.name);
  }

  String getId() {
    return "unique_id_" + this.id;
  }
}
