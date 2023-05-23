import 'package:ecochallenge/home.dart';
import 'package:ecochallenge/methods.dart';
import 'package:flutter/material.dart';

class Yumus extends StatefulWidget {
  const Yumus({super.key});

  @override
  State<Yumus> createState() => _YumusState();
}

class _YumusState extends State<Yumus> {
  List surat = ["assets/gezelenc.png", "assets/gap.png", "assets/oka.png"];
  List bal = ["20 bal", "50 bal", "10 bal"];
  List ady = [
    "Gezelenç, 100 ädim",
    "50 sany plastik gap ýygna we Bize getir",
    "Okamak,link"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Methods().myappbar(),
      endDrawer: Home().MyDrawer(context),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 40),
          child: Text(
            "Şu günki ýumuşlar",
            style: TextStyle(
                fontFamily: 'Hind Guntur',
                color: Color.fromRGBO(10, 84, 41, 1),
                fontSize: 21.4109,
                fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width * 0.95,
            child: ListView.builder(
              itemCount: surat.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.grey, width: 2)),
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          surat[index],
                          fit: BoxFit.fill,
                          height: double.infinity,
                          width: MediaQuery.of(context).size.width * 0.3,
                        ),
                        Container(
                            alignment: Alignment.centerLeft,
                            height: 100,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Text(
                              ady[index],
                              style: TextStyle(fontWeight: FontWeight.w700),
                            )),
                        Stack(
                          children: [
                            Image.asset(
                              "assets/rec.png",
                              fit: BoxFit.fill,
                              height: double.infinity,
                              width: MediaQuery.of(context).size.width * 0.2,
                            ),
                            Positioned(
                                right: 0,
                                left: 0,
                                top: 30,
                                child: Center(
                                  child: Text(
                                    bal[index],
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ]),
    );
  }
}
