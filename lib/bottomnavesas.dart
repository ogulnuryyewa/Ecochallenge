import 'package:ecochallenge/gifts.dart';
import 'package:ecochallenge/home.dart';
import 'package:ecochallenge/profil.dart';
import 'package:ecochallenge/winner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Bottomnavesas extends StatefulWidget {
  const Bottomnavesas({super.key});

  @override
  State<Bottomnavesas> createState() => _BottomnavesasState();
}

class _BottomnavesasState extends State<Bottomnavesas> {
  @override
  List ikons = [
    "assets/111.svg",
    "assets/Frame.svg",
    "assets/award.svg",
    "assets/profil.svg",
  ];
  List labs = ["Baş sahypa", "Ýeňijiler", "Baýraklar", "Profil"];
  List page = [];
  @override
  void initState() {
    // TODO: implement initState
    page = [Home(), Winner(), Gifts(), Profil()];
    super.initState();
  }

  Color yasyl = Color.fromRGBO(10, 84, 41, 1);
  int k = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[k],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: yasyl,
          currentIndex: k,
          selectedItemColor: Color.fromRGBO(122, 211, 57, 1),
          unselectedItemColor: Colors.white,
          items: [
            for (int i = 0; i < ikons.length; i++)
              bottom(
                  SvgPicture.asset(
                    ikons[i],
                    width: 20,
                    height: 20,
                  ),
                  labs[i])
          ],
          type: BottomNavigationBarType.fixed,
          onTap: (val) {
            k = val;
            setState(() {});
          }),
    );
  }

  bottom(SvgPicture ikons, String lab) {
    return BottomNavigationBarItem(icon: ikons, label: lab);
  }
}
