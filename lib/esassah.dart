import 'package:ecochallenge/home.dart';
import 'package:ecochallenge/methods.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Esassah extends StatefulWidget {
  const Esassah({super.key});

  @override
  State<Esassah> createState() => _EsassahState();
}

class _EsassahState extends State<Esassah> {
  List surat = [
    "assets/bag.png",
    "assets/bag1.png",
    "assets/recycle.png",
  ];
  List soz = [
    "Jemgyýetde sagdyn/ECO bäsleşigi höwesendirýäris.",
    "Daşky gurşaw meselelerine ünsi güýçlendirýäs.",
    "Gaýtadan işlenen materiýallaryň önümçiligini ösdürýäs."
  ];
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Methods().myappbar(),
      body: PageView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CarouselSlider.builder(
                      itemCount: surat.length,
                      itemBuilder: (BuildContext context, index, realIndex) {
                        return Container(
                          width: 250,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                surat[index],
                                height: 220,
                                width: 250,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  width: 230,
                                  alignment: Alignment.center,
                                  child: Text(
                                    soz[index],
                                    style: TextStyle(
                                        fontFamily: 'Hind Guntur',
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                      options: CarouselOptions(
                        autoPlay: false,
                        height: 370,
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
          ),
        ],
      ),
      endDrawer: Home().MyDrawer(context),
    );
  }
}
