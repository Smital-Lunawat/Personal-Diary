import 'package:flutter/material.dart';
import 'package:personal_diary/LoginPage.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: signUpPage(),
    );
  }
}

class signUpPage extends StatefulWidget {
  @override
  _signUpPageState createState() => _signUpPageState();
}

class _signUpPageState extends State<signUpPage> {
  FocusNode textFocusNodeEmail;
  bool mailIdValid = true;

  TextEditingController mailController = new TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    mailController = TextEditingController();
    mailController.text = null;
    textFocusNodeEmail = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    textFocusNodeEmail = FocusNode();
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back,
      //       color: Colors.black,
      //     ),
      //   ),
      // ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "Welcome!",
              style: TextStyle(fontSize: 35),
            ),
            Text(
              "Sign Up to continue...",
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(
              height: 30,
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
              height: 20,
            ),
            Text(
              "Mail ID",
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
            TextField(
              focusNode: textFocusNodeEmail,
              controller: mailController,
              decoration: InputDecoration(hintText: "test@mail.com"),
              style: TextStyle(fontSize: 20),
              onChanged: (value) {
                _validateEmail(value);
              },
            ),
            (mailIdValid) ? Text("") : Text("Enter a correct mail ID"),
            Expanded(
              child: Center(
                child: InkWell(
                  onTap: openLoginPage,
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 130, vertical: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: Colors.blueAccent),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                InkWell(
                  onTap: openLoginPage,
                  child: Text(" LOG IN",
                      style: TextStyle(
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  void openLoginPage() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LoginPage()));
  }

  String _validateEmail(String value) {
    value = value.trim();

    if (mailController.text != null) {
      if (value.isEmpty) {
        mailIdValid = false;
        setState(() {});
        return 'Email can\'t be empty';
      } else if (!value.contains(RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"))) {
        mailIdValid = false;
        setState(() {});
        return 'Enter a correct email address';
      }
    }
    mailIdValid = true;
    setState(() {});
    return null;
  }
}
