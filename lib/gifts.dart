import 'package:ecochallenge/methods.dart';
import 'package:flutter/material.dart';

class Gifts extends StatefulWidget {
  const Gifts({super.key});

  @override
  State<Gifts> createState() => _GiftsState();
}

class _GiftsState extends State<Gifts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Methods().myappbar(),
    );
  }
}
