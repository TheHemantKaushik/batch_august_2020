import 'dart:html';

class User {
  final String id;
  final String name;

  User(this.id, this.name);
}

abstract class LoginManager {
  //
  User login(String email, String password);

  void doWork() {
    print("done");
  }
}

class FakeLoginManager extends LoginManager {
  @override
  User login(String email, String password) {
    if (email == "abc@example.com" && password == "123456") {
      return new User("id_001", "John Doe");
    }
    return null;
  }

  User login2(String email, String password) {
    if (email == "abc@example.com" && password == "123456") {
      return new User("id_001", "John Doe");
    }
    return null;
  }
}

class RealLoginManager extends LoginManager {
  @override
  User login(String email, String password) {
    if (email == "abc@example.com" && password == "123456") {
      return new User("id_001", "John Doe");
    }
    return null;
  }
}

class LoginPage {
  final LoginManager manager = RealLoginManager();

  void submit() {
    String email = "abc@example.com";
    String password = "123456";
    User user = manager.login(email, password);
  }
}

void main() {
  LoginPage page = new LoginPage();
  page.submit();
}

abstract class PostManager {
  void postBig(Object data);
  void postSmall(Object data);

  void postAnything(Object data) {}
}

abstract class ParentPostManager extends PostManager {
  @override
  void postSmall(Object data) {}
  @override
  void postBig(Object data) {}
}

class ChildPostManager extends ParentPostManager {
  @override
  void postSmall(Object data) {
    // send using plane
  }
}
