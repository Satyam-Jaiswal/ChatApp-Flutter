import 'package:Chatapp/necessities/theme.dart';
import 'package:Chatapp/screens/signin.dart';
import 'package:Chatapp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passwordEditingController = new TextEditingController();
  TextEditingController usernameEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: appBarMain(context),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Spacer(),
            Center(
              child: Image.asset(
                "assets/images/logo.png",
                height: 100,
              ),
            ),
            Spacer(),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    style: simpleTextStyle(),
                     controller: usernameEditingController,
                    decoration: textFieldInputDecoration("User Name"),
                  ),
                  TextFormField(
                    style: simpleTextStyle(),
                    controller: emailEditingController,
                    decoration: textFieldInputDecoration("Email"),
                  ),
                  TextFormField(
                    obscureText: true,
                    validator: (val) {
                      return val.length > 6
                          ? null
                          : "Enter Password 6+ characters";
                    },
                     controller: passwordEditingController,
                    style: simpleTextStyle(),
                    decoration: textFieldInputDecoration("Password"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 32,
            ),
            GestureDetector(
              onTap: () {
                //TODO
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xff007EF4),
                        const Color(0xff2A75BC)
                      ],
                    )),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  "Sign Up",
                  style: biggerTextStyle(),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.white),
              width: MediaQuery.of(context).size.width,
              child: Text(
                "Sign Up with Google",
                style: TextStyle(fontSize: 17, color: CustomTheme.textColor),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have Account? ",
                  style: simpleTextStyle(),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignIn()),
                    );
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
