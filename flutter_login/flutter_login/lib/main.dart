import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      theme: ThemeData.dark(),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _isValidEmail = true;
  bool _isValidPassword = true;

  void _login() {
    String email = emailController.text;
    String password = passwordController.text;

    bool isValidEmail = email.contains('@');
    bool isValidPassword = password.length >= 8 &&
        RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password) &&
        password.contains(RegExp(r'[A-Z]'));

    setState(() {
      _isValidEmail = isValidEmail;
      _isValidPassword = isValidPassword;
    });

    if (isValidEmail && isValidPassword) {
      // Realizar ação de login
      print("Login realizado com sucesso!");
    }
  }

  void _clearFields() {
    emailController.clear();
    passwordController.clear();

    setState(() {
      _isValidEmail = true;
      _isValidPassword = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(

          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  errorText: _isValidEmail ? null : 'E-mail inválido',
                ),
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  errorText: _isValidPassword ? null : 'Senha inválida',
                ),
                obscureText: true,
              ),
              const SizedBox(height: 80),
              ElevatedButton(
                onPressed: _login,
                child: const Text('Entrar'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _clearFields,
                child: const Text('Limpar Campos'),
                
              ),
            ],
          ),
        ),
      ),
    );
  }
}
