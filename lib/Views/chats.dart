import 'package:chat_app/Helper/authenticate.dart';
import 'package:chat_app/Helper/constants.dart';
import 'package:chat_app/Helper/helperfunctions.dart';
import 'package:chat_app/Services/auth.dart';
import 'package:chat_app/Views/search.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  AuthMethods authMethods = new AuthMethods();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Flutter Chat'),
        actions: [
          GestureDetector(
            onTap: () {
              authMethods.signOut();
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Authenticate()));
            },
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Icon(Icons.exit_to_app_rounded)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.search_rounded),
        backgroundColor: Colors.blueAccent,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Search()));
        },
      ),
    );
  }
}
