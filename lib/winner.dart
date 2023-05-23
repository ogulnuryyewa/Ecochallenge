import 'package:ecochallenge/methods.dart';
import 'package:flutter/material.dart';

class Winner extends StatefulWidget {
  const Winner({super.key});

  @override
  State<Winner> createState() => _WinnerState();
}

class _WinnerState extends State<Winner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Methods().myappbar(),
    );
  }
}
