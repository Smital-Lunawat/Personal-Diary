import 'package:flutter/material.dart';
import 'package:personal_diary/PasswordChangedSuccessfully.dart';
import 'LoginPage.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: resetPassword(),
    );
  }
}

class resetPassword extends StatefulWidget {
  @override
  _resetPasswordState createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: openLoginPage,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Reset Password",
              style: TextStyle(fontSize: 35),
            ),
            Text(
              "Reset code was sent to your mail Id. Please enter the code and create a new password",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Reset code",
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
            TextField(
              decoration: InputDecoration(hintText: "****"),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              "Password",
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: "Enter your new password"),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Confirm password",
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(hintText: "Re-enter your password"),
              style: TextStyle(fontSize: 20),
            ),
            Expanded(
              child: Center(
                child: InkWell(
                  onTap: openSuccessPage,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: Colors.blueAccent),
                    child: Text(
                      "Change Password",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void openLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void openSuccessPage() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => PasswordChangedSuccessfully()));
  }
}
