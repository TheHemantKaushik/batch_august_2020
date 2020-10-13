import 'package:hello_api/core/models/user.dart';

class LoginRepository {
  Future<User> login(String email, String password) async {
    await Future.delayed(Duration(seconds: 2));

    // email not exists
    if (email != "john@gmail.com") {
      throw Exception("Email not exists");
    }
    // password not matched
    if (password != "123456") {
      throw Exception("Password does not match");
    }
    // internet error
    // server down
    // parsing error

    return User("uid_001", "John Doe");
  }
}
