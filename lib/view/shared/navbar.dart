import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _Navbar();
}

class _Navbar extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text("Space trader"),
        actions: <Widget>[
          IconButton(
          icon: Icon(Icons.rocket_launch),
          onPressed: () => setState(() {
          })
          )
        ],
      );

  }
}