import 'package:flutter/material.dart';
import 'package:space_trader_game/route/route.dart';
import 'package:space_trader_game/view/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Space Trader',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //primarySwatch: Colors.white,
          colorScheme:
              ColorScheme.fromSwatch().copyWith(secondary: Colors.pink),
          appBarTheme: const AppBarTheme(
              color: Colors.purple,
              iconTheme: IconThemeData(
            color: Colors.white,
          ))),
      routerConfig: router,
    );
  }
}
