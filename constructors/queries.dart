class User1 {
  final String id;

  User1(this.id);
}

class User2 {
  final String id;
  final String name;

  User2(this.id, [this.name]);
}

class User3 {
  final String id;
  final String name;

  User3({this.id, this.name});
}

void main() {
  User1 user1 = new User1('id');
  User2 user2 = new User2('id');
  User2 user2_1 = new User2('id', 'name');

  User3 user3 = new User3(
    name: 'value',
    id: 'id',
  );
}
