import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:space_trader_game/backend/local_storage.dart';

import '../components/form_user.dart';
import '../shared/navbar.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  Map<String, dynamic> user =
      jsonDecode(LocalStorageHelper.getValue("token").substring(12));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Navbar(),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://miro.medium.com/max/1400/1*r3Q7bGi9pDOJL0Iw2wdp3g.png"),
                fit: BoxFit.cover)),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                  Text("Bonjour " + user["nom"],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),),
                  ClipRRect(
                   // borderRadius: BorderRadius.circular(90.0),
                    child: Image.network(
                      user["photo"],
                      height: 350.0,
                      width: 200.0,
                    ),
                  ),

              IconButton(onPressed: () => {  showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  // déclaration de la pop up
                  title: Center(child: const Text('Mes Informations')),
                  actions: <Widget>[
                        FormUser()
                  ],
                ),
              ),
              }, icon: Icon(Icons.edit, color: Colors.white,
                size: 40,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
