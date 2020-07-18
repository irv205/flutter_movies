import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_movies_app/src/pages/home.dart';
import 'package:flutter_movies_app/src/pages/movie_detail.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
    statusBarBrightness: Brightness.dark
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fmovies",
      initialRoute: "/",
      routes: {
        "/": (BuildContext context) => HomePage(),
        "detail": (BuildContext context) => MovieDetail(),
      },
      theme: ThemeData(
        primaryColorBrightness: Brightness.dark,
        primaryColor: Colors.black,
        primaryColorLight: Colors.grey[100],
        primaryColorDark: Colors.grey[800],
        accentColor: Colors.grey,
        indicatorColor: Colors.black26,
        fontFamily: "Jost",
      ),
    );
  }
}

