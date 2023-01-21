import 'package:flutter/material.dart';
import 'package:space_trader_game/view/shared/bottom_navigation.dart';

import '../../controller/news_controller.dart';
import '../shared/navbar.dart';
import 'dart:developer' as developer;
import 'package:intl/intl.dart';


class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  var allNews = NewsController.getAllNews();
  DateFormat dateFormat = DateFormat("dd/MM/yyyy à HH:mm:ss");
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
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Text("Page news " ,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),),
        FutureBuilder<dynamic?>(
            future: allNews,
            builder: (context, snapshot) {
              if (snapshot.hasData &&
                  snapshot.connectionState == ConnectionState.done) {
                return ListView.builder(
                  shrinkWrap: true,
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    String dateCreateEvent = dateFormat.format(snapshot.data[index]["dateCreateEvent"]);
                    //developer.log(snapshot.data[index]["typeEvent"], name:'Actualites Page' );
                    return Column(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget> [
                        Card(
                          color: Colors.white70,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.0),
                          ),
                          margin: EdgeInsets.all(10),
                          child: Text(snapshot.data[index]["typeEvent"] + " le " + dateCreateEvent  ,
                            style: const TextStyle(height: 3, fontSize: 18, color: Colors.deepPurple),
                          ),

                        ),
                      ]
                    );// Text(snapshot.data?[index] ?? "got null");
                  },
                );
              }

              /// handles others as you did on question
              else {
                return CircularProgressIndicator();
              }
            },
              /*
              ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return  Card(
                        child: SizedBox(
                        width: 300,
                        height: 100,
                        child: Column(
                            children: <Widget>[
                            Text(allNews[index]["typeEvent"])
                              ]
                        ),
                    ));
                  }),*/)
        ]
          ),
      ),
    );

  }

}
