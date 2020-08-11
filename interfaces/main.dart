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

class TestLoginManager extends LoginManager {
  @override
  User login(String email, String password) {
    if (email == "abc@example.com" && password == "123456") {
      return new User("id_001", "John Doe");
    }
    return null;
  }
}

class LoginPage {
  final LoginManager manager;

  LoginPage(this.manager);

  void submit() {
    String email = "abc@example.com";
    String password = "123456";
    User user = manager.login(email, password);
  }
}

//email=password
final releaseMode = true;

void main() {
  LoginManager manager;
  if (releaseMode) {
    manager = RealLoginManager();
  } else {
    manager = TestLoginManager();
  }

  LoginPage page = new LoginPage(manager);

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
