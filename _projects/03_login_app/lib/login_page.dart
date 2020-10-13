import 'package:flutter/material.dart';
import 'package:login_app/forgot_password_page.dart';
import 'package:login_app/utils/form_validators.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formController = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  bool _autoValidate = false;

  void _login() {
    print('Login pressed');

    if (_autoValidate == false) {
      setState(() {
        _autoValidate = true;
      });
    }

    bool isFormValid = _formController.currentState.validate();
    print('isFormValid=$isFormValid');

    if (isFormValid) {
      _formController.currentState.save();

      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();

      print('email=$email, password=$password');

      // setState(() {
      //   _emailController.text = "email@gmail.com";
      // });
    }
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
              // Flexible(child: Container()),
              SizedBox(height: 100),
              TextFormField(
                autovalidate: _autoValidate,
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
                validator: validateEmail,
              ),
              TextFormField(
                autovalidate: _autoValidate,
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
                validator: validatePassword,
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
              // Flexible(child: Container()),
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
