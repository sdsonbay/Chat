import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context) {
  return AppBar(
    title: Center(child: Text('Flutter Chat')),
    backgroundColor: Colors.blueAccent,
  );
}

InputDecoration textFieldInputDecoration(String placeholder) {
  return InputDecoration(
    hintText: placeholder,
    hintStyle: TextStyle(
      color: Colors.grey[600],
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.blueAccent,
      ),
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
  );
}
