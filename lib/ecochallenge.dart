import 'package:ecochallenge/GPS.dart';
import 'package:ecochallenge/bottomnav.dart';
import 'package:ecochallenge/esassah.dart';
import 'package:flutter/material.dart';

class Ecochallenge extends StatefulWidget {
  const Ecochallenge({super.key});

  @override
  State<Ecochallenge> createState() => _EcochallengeState();
}

class _EcochallengeState extends State<Ecochallenge> {
  Color yasyl = Color.fromRGBO(10, 84, 41, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yasyl,
      body: InkWell(
        onTap: () => showDialog(
            context: context,
            builder: ((context) {
              return AlertDialog(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                content: Gps(),
              );
            })),
        child: Column(
          children: [
            Image.asset(
              "assets/yaprak.png",
              height: 411.79,
              width: 320.86,
              alignment: Alignment(-3.5, -1),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 74.3, top: 10, right: 75.3),
              child: Image.asset(
                "assets/logo.png",
                height: 91.37,
                width: 225.32,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 11),
              child: Text(
                "Biziň bilen günde bir peýdaly iş et!",
                style: TextStyle(
                    fontFamily: 'Hind Guntur',
                    color: Colors.white,
                    fontSize: 21.4109,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
