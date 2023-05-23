import 'package:ecochallenge/esassah.dart';
import 'package:ecochallenge/profil.dart';
import 'package:flutter/material.dart';

class Gps extends StatefulWidget {
  const Gps({super.key});

  @override
  State<Gps> createState() => _GpsState();
}

class _GpsState extends State<Gps> {
  List shahers = ["Ashgabat", "Turkmenabat", "Mary", "Balkanabat", "Ahal"];

  String a = "";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.width * 0.7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Şäher saýlaň",
            style: TextStyle(color: Color.fromRGBO(10, 84, 41, 1)),
          ),
          for (int i = 0; i < shahers.length; i++)
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                highlightColor: Colors.green,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profil(),
                      ));
                },
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(shahers[i]),
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
