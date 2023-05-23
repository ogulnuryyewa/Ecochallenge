import 'package:ecochallenge/bottomnavesas.dart';
import 'package:ecochallenge/esassah.dart';
import 'package:ecochallenge/methods.dart';
import 'package:flutter/material.dart';

class Dil extends StatefulWidget {
  const Dil({super.key});

  @override
  State<Dil> createState() => _DilState();
}

class _DilState extends State<Dil> {
  Color yasyl = Color.fromRGBO(10, 84, 41, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Methods().myappbar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Dil saýlaň!",
                      style: TextStyle(
                          fontFamily: 'Hind Guntur',
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Русский",
                      style: TextStyle(
                          fontFamily: 'Hind Guntur',
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "English",
                      style: TextStyle(
                          fontFamily: 'Hind Guntur',
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Bottomnavesas()));
                      },
                      child: Text(
                        "Türkmen",
                        style: TextStyle(
                            fontFamily: 'Hind Guntur',
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
