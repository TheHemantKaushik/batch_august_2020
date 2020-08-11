class User {
  final String id;
  final String name;

  User(this.id, this.name);
}

abstract class LoginManager {
  Future<User> login(String email, [String password]);
}

class RealLoginManager extends LoginManager {
  @override
  Future<User> login(String email, [String password]) async {
    await Future.delayed(Duration(seconds: 2));

    if (email == "abc@example.com" && password == "123456") {
      final user = User("id_001", "John Doe");
      return Future.value(user);
    }
    return null;
  }
}

class LoginPage {
  final LoginManager manager;

  LoginPage(this.manager);

  Future<bool> login() async {
    String email = "abc@example.com";
    String password = "123456";
    User user = await manager.login(email, password);
    return user != null;
  }
}

Future<void> main() async {
  print('start time: ${DateTime.now()}');
  LoginManager manager = RealLoginManager();

  LoginPage page = new LoginPage(manager);
  bool isLoggedIn = await page.login();
  print('isLoggedIn = $isLoggedIn');

  if (isLoggedIn) {
    // navigate to dashboard
  } else {
    // show error
  }

  print('end time: ${DateTime.now()}');

  // calculate(1, 2, 3, 4);
  // calculate(1, 2, 3, 4);

  // calculate2(
  //   num3: 3,
  //   num2: 2,
  //   num4: 4,
  //   num1: 1,
  // );
}

void calculate(int num1, [int num2, int num3, int num4]) {}

void calculate2({
  int num1,
  int num2,
  int num3,
  int num4,
}) {}
