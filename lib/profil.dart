import 'package:ecochallenge/hasap.dart';
import 'package:ecochallenge/mail.dart';
import 'package:ecochallenge/methods.dart';
import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  Color yasyl = Color.fromRGBO(10, 84, 41, 1);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: yasyl,
          title: Center(
            child: Image.asset(
              "assets/logo.png",
              height: 45,
              width: 110.95,
            ),
          ),
          bottom: TabBar(labelColor: Colors.white, tabs: [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.call), Text("Telefon belgi")],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                  ),
                  Text("E-mail")
                ],
              ),
            ),
          ]),
        ),
        backgroundColor: Colors.white,
        body: TabBarView(
          children: [
            Tab(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 17, bottom: 17),
                    child: Text(
                      "Registrasiýa gornüşini saýla",
                      style: TextStyle(color: yasyl, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 17, top: 17, right: 17),
                    child: TextField(
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: yasyl)),
                            hintText: "Ulanyjy ady",
                            labelText: "Ulanyjy ady",
                            labelStyle: TextStyle(color: yasyl),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ))),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 17, top: 10, right: 17),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1, color: yasyl)),
                          prefixText: "+993",
                          hintText: "Telefon Belgiňiz",
                          labelText: "Telefon Belgiňiz",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              borderSide: BorderSide(width: 1, color: yasyl))),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 17, top: 17, right: 17),
                    child: TextField(
                        maxLength: 8,
                        obscureText: true,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: yasyl)),
                            hintText: "Açar sözi",
                            suffixIcon: Icon(Icons.visibility_outlined),
                            labelText: "Açar sözi",
                            labelStyle: TextStyle(color: yasyl),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ))),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 17, top: 17, right: 17),
                    child: TextField(
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              width: 1,
                              color: yasyl,
                            )),
                            suffixIcon: Icon(Icons.visibility_outlined),
                            labelText: "Açarsözi tassyklaň",
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Hasap(),
                            ));
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 140),
                              child: Icon(
                                Icons.person_add,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Agza Bol",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Tab(
              child: Mail(),
            )
          ],
        ),
      ),
    );
  }
}
