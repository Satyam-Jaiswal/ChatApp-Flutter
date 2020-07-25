// import 'package:Chatapp/widgets/widgets.dart';
import 'package:Chatapp/screens/signin.dart';
import 'package:Chatapp/services/auth.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {

  AuthService authService = new AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Image.asset(
          "assets/images/logo.png",
          height: 40,
        ),
        actions: [
          GestureDetector(
            onTap: () {
             authService.signOut() ;
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignIn(),));
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Icon(Icons.exit_to_app)),
          )
        ],
      ),
    );
  }
}
