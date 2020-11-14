import 'package:flutter/material.dart';
import 'ForgotPassword.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: loginPage(),
    );
  }
}

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 35),
            ),
            Text(
              "Sign in to continue...",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "User Name",
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
            TextField(
              decoration: InputDecoration(hintText: "John Doe"),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Password",
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: "Enter your password"),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: openForgotPassword,
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
            Expanded(
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      color: Colors.blueAccent),
                  child: Text(
                    "Log In",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void openForgotPassword() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ForgotPassword()));
  }
}
