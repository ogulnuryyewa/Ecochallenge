import 'package:ecochallenge/basla.dart';
import 'package:ecochallenge/methods.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  List ady = [
    ["Baş sahypa", Icon(Icons.grid_view_outlined)],
    ["Bildirişler", Icon(Icons.library_books_outlined)],
    [
      "Şu günki ýumuşlar",
      Icon(Icons.inventory_outlined),
    ],
    [
      "Gyzykly faktlar",
      Icon(Icons.add_box_outlined),
    ],
    [
      "Dilini üýtgetmek",
      Icon(Icons.language_outlined),
    ],
    [
      "Kömek",
      Icon(Icons.settings_outlined),
    ],
    [
      "Habarlaşmak",
      Icon(Icons.insert_comment_outlined),
    ],
    [
      "Biz barada",
      Icon(Icons.insert_comment_outlined),
    ],
    [
      "Akkauntdan çykmak",
      Icon(Icons.logout_outlined),
    ]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Methods().myappbar(),
      body: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/background.png",
                fit: BoxFit.fill,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              )
            ],
          ),
          Positioned(
              left: 15,
              right: 15,
              bottom: 35,
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Basla()));
                },
                child: Container(
                  height: 59,
                  width: 334,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color.fromRGBO(122, 211, 57, 0.8)),
                  child: Center(
                    child: Text(
                      "Başlamak",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'inter',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              )),
          Positioned(
            left: 5,
            right: 5,
            bottom: MediaQuery.of(context).size.height * 0.7,
            child: Padding(
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
          )
        ],
      ),
      endDrawer: MyDrawer(context),
    );
  }

  Drawer MyDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      width: MediaQuery.of(context).size.width * 0.8,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 80),
          child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.white),
            currentAccountPictureSize: Size.square(100),
            currentAccountPicture: SvgPicture.asset(
              "assets/profil1.svg",
              alignment: AlignmentDirectional.topStart,
            ),
            accountName: Text(
              "Ogulnur Nuryyewa",
              style: TextStyle(color: Colors.black),
            ),
            accountEmail:
                Text("99361561671", style: TextStyle(color: Colors.black)),
          ),
        ),
        Column(
            children: List.generate(ady.length, (index) => mylist(ady[index]))),
      ]),
    );
  }

  mylist(List ady) {
    return ListTile(
      leading: ady[1],
      title: Text(
        ady[0],
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
