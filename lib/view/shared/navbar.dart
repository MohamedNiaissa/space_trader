import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:space_trader_game/backend/local_storage.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _Navbar();
}

class _Navbar extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    if(LocalStorageHelper.getValue("token") == null) {
      return AppBar(
          title: Text("Space trader"),
          actions: <Widget>[
            IconButton(
            icon: Icon(Icons.rocket_launch),
            onPressed: () => setState(() {
              context.go("/");
            })
            )
          ],
        );
    } else {
      return AppBar(
        title: Text("Space trader"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.rocket_launch),
              onPressed: () => setState(() {
                context.go("/main");
              })
          ),
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () => setState(() {
                context.go("/");
                LocalStorageHelper.clearAll();
              })
          ),
        ],
      );
    }

  }
}