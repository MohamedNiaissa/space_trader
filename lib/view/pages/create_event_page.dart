import 'package:flutter/material.dart';

import '../components/form_concours.dart';
import '../components/form_cours.dart';
import '../components/form_reunion.dart';
import '../shared/navbar.dart';

class Event extends StatefulWidget {
  const Event({Key? key}) : super(key: key);

  @override
  State<Event> createState() => _EventState();
}

class _EventState extends State<Event> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Navbar(),
      ),
      body: Container(
        width: 600,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://miro.medium.com/max/1400/1*r3Q7bGi9pDOJL0Iw2wdp3g.png"),
                fit: BoxFit.fill)),
          child: Column (
            children: <Widget>[
              Text("Créer un événement",
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                )),
              IconButton(onPressed: () => {  showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  // déclaration de la pop up
                  title: Center(child: const Text('Concours')),
                  actions: <Widget>[
                    FormConcours()
                  ],
                ),
              ),
              }, icon: Icon(Icons.group_outlined, color: Colors.white,
                size: 40,
              )),
              IconButton(onPressed: () => {  showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  // déclaration de la pop up
                  title: Center(child: const Text('Cours')),
                  actions: <Widget>[
                    FormCours()
                  ],
                ),
              ),
              }, icon: Icon(Icons.school, color: Colors.white,
                size: 40,
              )),
              IconButton(onPressed: () => {  showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  // déclaration de la pop up
                  title: Center(child: const Text('Réunion')),
                  actions: <Widget>[
                    FormReunion()
                  ],
                ),
              ),
              }, icon: Icon(Icons.meeting_room, color: Colors.white,
                size: 40,
              )),
            ],
          )
      ),
    );
  }
}
