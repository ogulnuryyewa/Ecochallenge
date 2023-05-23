import 'package:ecochallenge/methods.dart';
import 'package:flutter/material.dart';

class Paylas extends StatefulWidget {
  const Paylas({super.key});

  @override
  State<Paylas> createState() => _PaylasState();
}

class _PaylasState extends State<Paylas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Methods().myappbar(),
    );
  }
}
