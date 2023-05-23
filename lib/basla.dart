import 'package:ecochallenge/home.dart';
import 'package:ecochallenge/methods.dart';
import 'package:ecochallenge/paylas.dart';
import 'package:ecochallenge/test.dart';
import 'package:ecochallenge/yumus.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Basla extends StatefulWidget {
  const Basla({super.key});

  @override
  State<Basla> createState() => _BaslaState();
}

class _BaslaState extends State<Basla> {
  int a = 0;
  List bolum = ["Ýumuşlar", "Testler", "Paýlaş"];
  List subbolum = [
    "Ýumuşlary ýerine ýetirmek bilen",
    "Testleri işlemek bilen",
    "App'i dostlaryň bilen paýlaş"
  ];
  List surat = ["assets/yumus.png", "assets/test.png", "assets/payl.png"];
  List klas = [Yumus(), Test(), Paylas()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Methods().myappbar(),
        endDrawer: Home().MyDrawer(context),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 11),
              child: Text(
                "Bal Al - Utuş Gazan!",
                style: TextStyle(
                    fontFamily: 'Hind Guntur',
                    color: Color.fromRGBO(10, 84, 41, 1),
                    fontSize: 21.4109,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Stack(
              children: [
                CarouselSlider.builder(
                    itemCount: surat.length,
                    itemBuilder: (BuildContext context, index, realIndex) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => klas[index],
                                  ));
                            },
                            child: Image.asset(
                              surat[index],
                              height: 400,
                              width: 300,
                            ),
                          ),
                        ],
                      );
                    },
                    options: CarouselOptions(
                      autoPlay: false,
                      viewportFraction: 0.82,
                      height: 600,
                      autoPlayAnimationDuration: Duration(seconds: 1),
                      onPageChanged: (index, reason) {
                        a = index;
                        setState(() {});
                      },
                    )),
                Positioned(
                    left: 0,
                    right: 0,
                    bottom: 3,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: surat
                              .map((e) => Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: Container(
                                      height: 10,
                                      width: 10,
                                      decoration: BoxDecoration(
                                          color: surat.indexOf(e) == a
                                              ? Color.fromRGBO(10, 84, 41, 1)
                                              : Colors.grey,
                                          shape: BoxShape.circle),
                                    ),
                                  ))
                              .toList()),
                    ))
              ],
            ),
          ],
        ));
  }
}
