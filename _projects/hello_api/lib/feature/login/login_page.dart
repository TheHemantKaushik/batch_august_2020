import 'package:flutter/material.dart';
import 'package:hello_api/core/models/user.dart';
import 'package:hello_api/core/utils/form_validators.dart';
import 'package:hello_api/feature/login/login_repository.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formController = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _repository = LoginRepository();

  AutovalidateMode _autovalidateMode = AutovalidateMode.disabled;

  bool _enableTextField = true;
  bool _loaderVisible = false;

  void _login() async {
    print('Login pressed');

    setState(() {
      _autovalidateMode = AutovalidateMode.always;
    });

    bool isFormValid = _formController.currentState.validate();
    print('isFormValid=$isFormValid');

    if (isFormValid) {
      _formController.currentState.save();

      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();

      showLoading();

      try {
        User user = await _repository.login(email, password);
        _showDialog("Hello, ${user.name}!");
        //TODO: navigate to home page
      } catch (e) {
        _showDialog(e.toString());
        print(e);
      }

      hideLoading();
    }
  }

  void _showDialog(String message) {
    showDialog(
      context: context,
      child: AlertDialog(
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  void showLoading() {
    setState(() {
      _loaderVisible = true;
      _enableTextField = false;
    });
  }

  void hideLoading() {
    setState(() {
      _loaderVisible = false;
      _enableTextField = true;
    });
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
                autovalidateMode: _autovalidateMode,
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: "Email",
                ),
                validator: validateEmail,
                enabled: _enableTextField,
              ),
              TextFormField(
                autovalidateMode: _autovalidateMode,
                controller: _passwordController,
                decoration: InputDecoration(
                  hintText: "Password",
                ),
                validator: validatePassword,
                enabled: _enableTextField,
              ),
              SizedBox(height: 16),
              if (_loaderVisible)
                CircularProgressIndicator()
              else
                Container(
                  width: double.infinity,
                  child: RaisedButton(
                    onPressed: _login,
                    child: Text("Login"),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
