import 'package:flutter/material.dart';
import 'package:flutterfirebase/house.dart';

import 'home_screen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  dynamic _isVisible = false;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        elevation: 0,
        centerTitle: true,
        actions: [Icon(Icons.segment_rounded)],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Form(
                      child: TextFormField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0)),
                      enabled: true,
                      labelText: "Username",
                      hintText: "Enter Username",
                    ),
                  )),
                  Form(
                      child: TextFormField(
                    controller: _passwordController,
                    obscureText: !_isVisible,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0)),
                        enabled: true,
                        labelText: "Password",
                        hintText: "Enter Password",
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _isVisible = !_isVisible;
                              });
                            },
                            icon: _isVisible
                                ? Icon(Icons.visibility)
                                : Icon(Icons.visibility_off))),
                  )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    //ignore:deprecated_member_use
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => HomeScreen()));
                      },
                      icon: Icon(Icons.app_registration),
                      label: Text("Login"),
                      textColor: Colors.white70,
                      color: Colors.pinkAccent,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => SignUp()));
                      },
                      child: Text(
                        "Not have an account?SignUp",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
