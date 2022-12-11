import 'package:flutter/material.dart';
import 'package:space_trader_game/view/shared/bottom_navigation.dart';

import '../shared/navbar.dart';

class Actualities extends StatefulWidget {
  const Actualities({Key? key}) : super(key: key);

  @override
  State<Actualities> createState() => _ActualitiesState();
}

class _ActualitiesState extends State<Actualities> {

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
              Text("Page news " ,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),),
            ],

          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBarElement(),
    );

  }

}
