import 'package:bookstore_flutter_web/home.dart';
import 'package:flutter/material.dart';

void main() {
  const Map<int, Color> colorCodes = {
    50: Color.fromRGBO(42, 44, 62, .1),
    100: Color.fromRGBO(42, 44, 62, .2),
    200: Color.fromRGBO(42, 44, 62, .3),
    300: Color.fromRGBO(42, 44, 62, .4),
    400: Color.fromRGBO(42, 44, 62, .5),
    500: Color.fromRGBO(42, 44, 62, .6),
    600: Color.fromRGBO(42, 44, 62, .7),
    700: Color.fromRGBO(42, 44, 62, .8),
    800: Color.fromRGBO(42, 44, 62, .9),
    900: Color.fromRGBO(42, 44, 62, 1),
  };

  runApp(
    MaterialApp(
      title: 'Bookstore flutter web',
      home: HomeScreen(),
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: MaterialColor(0xFF2a2c3e, colorCodes),
        backgroundColor: Color(0xFF2a2c3e),
      ),
    ),
  );
}