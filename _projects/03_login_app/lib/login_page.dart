import 'package:flutter/material.dart';
import 'package:login_app/forgot_password_page.dart';

class LoginPage extends StatelessWidget {
  final _formController = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    print('Login pressed');

    final email = _emailController.text;
    final password = _passwordController.text;

    print('email=$email, password=$password');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formController,
          child: Column(
            children: [
              Flexible(child: Container()),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context) {
                        return ForgotPasswordPage();
                      }),
                    );
                  },
                  child: Text("Forgot Password?"),
                ),
              ),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  onPressed: _login,
                  child: Text("Login"),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                ),
              ),
              Flexible(child: Container()),
              Text(
                "Or login with:",
                style: Theme.of(context).textTheme.caption,
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.ac_unit),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.flash_auto),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
