import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login Form saved to MySQL'),
        ),
        body: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius:
                  BorderRadius.circular(5.0), // Adjust the border radius
            ),
            child: Column(
              children: [
                TextField(
                  key: Key('usernameField'),
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  key: Key('passwordField'),
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () {
              // Perform login logic here
              String username = _usernameController.text;
              String password = _passwordController.text;

              // Add your authentication logic here
              // For simplicity, we'll just print the entered values for now
              print('Username: $username');
              print('Password: $password');
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
