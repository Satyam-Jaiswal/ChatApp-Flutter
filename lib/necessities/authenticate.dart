import 'package:Chatapp/screens/signin.dart';
import 'package:Chatapp/screens/signup.dart';
import 'package:flutter/material.dart';


class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {

  bool showSignIn = true;

  void toggleVeiw(){
    setState(() {
      showSignIn = ! showSignIn;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    if(showSignIn){
      return SignIn(toggleVeiw);
    }
      else{
        return SignUp();
      }
    
  }
}