import 'package:ecochallenge/dil.dart';
import 'package:ecochallenge/ecochallenge.dart';
import 'package:ecochallenge/esassah.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  List ikon = [Icon(Icons.home_outlined), Icon(Icons.language_outlined)];
  List lab = ["Home", "Language"];
  List page = [];
  @override
  void initState() {
    // TODO: implement initState
    page = [Esassah(), Dil()];
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
            for (int i = 0; i < ikon.length; i++) bottom(ikon[i], lab[i])
          ],
          type: BottomNavigationBarType.fixed,
          onTap: (val) {
            k = val;
            setState(() {});
          }),
    );
  }

  bottom(Icon ikon, String lab) {
    return BottomNavigationBarItem(icon: ikon, label: lab);
  }
}
