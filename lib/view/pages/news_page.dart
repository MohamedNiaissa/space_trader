import 'package:flutter/material.dart';
import 'package:space_trader_game/view/shared/bottom_navigation.dart';

import '../shared/navbar.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Navbar(),
      ),
      body: Container(
        width: 400,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://miro.medium.com/max/1400/1*r3Q7bGi9pDOJL0Iw2wdp3g.png"),
                fit: BoxFit.fill)),
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Page news " ,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),),
            ],
          ),
      ),
    );

  }

}
