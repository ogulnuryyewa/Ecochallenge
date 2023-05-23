import 'package:ecochallenge/bottomnav.dart';
import 'package:flutter/material.dart';

class Hasap extends StatefulWidget {
  const Hasap({super.key});

  @override
  State<Hasap> createState() => _HasapState();
}

class _HasapState extends State<Hasap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => Bottomnav(),
            ),
            (Route<dynamic> route) => false,
          );
        },
        child: Container(
          child: Image.asset(
            "assets/hasap.png",
            fit: BoxFit.fill,
          ),
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
