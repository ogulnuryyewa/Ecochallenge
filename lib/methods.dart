import 'package:flutter/material.dart';

class Methods {
  AppBar myappbar() {
    return AppBar(
      toolbarHeight: 70,
      backgroundColor: Color.fromRGBO(10, 84, 41, 1),
      title: Center(
        child: Image.asset(
          "assets/logo.png",
          height: 45,
          width: 110.95,
        ),
      ),
    );
  }
}
