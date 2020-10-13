main() {
  int n1 = 12;
  double d1 = 23.234;
  bool b1 = true;

  User u1 = new User();
  u1.id;
  u1.name;
  u1.hobby;
}

class User {
  String id, name;
  String hobby1, hobby2;
}

1. List
// values, duplicate
List<User> users = new List<>();
List<User> users = <>[];
var users = ["value1", "value2", "value3", "value1"];

users.add(User());

2. Set
// values, no duplicate
Set<User> users = new Set<>();
Set<User> users = {};
var users = {"value1", "value2", "value3", "value1"};

users.add(User());

3. Map
// key:value, keys unique
Map<int, User> users = new Map();
Map<int, User> users = {};
var users = {1: User(), 2: User(), 3: User(), 1: User()};

users.add(User());
