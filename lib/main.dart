
import 'package:Chatapp/screens/chatroom.dart';
import 'package:Chatapp/screens/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,

        scaffoldBackgroundColor: Color(0xff070038),
      
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: ChatRoom(),
    );
  }
}


