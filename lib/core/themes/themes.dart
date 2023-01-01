import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

 ThemeData lightTheme=ThemeData(
  textTheme: const TextTheme(
    headline6: TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    bodyText1: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
      overflow: TextOverflow.ellipsis,
    ),
    caption: TextStyle(
      fontSize: 14,
      color: Colors.black,
      fontWeight: FontWeight.w400,

    ),
  ),
  primarySwatch: Colors.deepOrange,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    titleTextStyle: TextStyle(color: Colors.black),
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.white,
    elevation: 0.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    // type: BottomNavigationBarType.shifting,
    //showUnselectedLabels: true,
    unselectedItemColor: Colors.grey,
    selectedItemColor: Colors.deepOrange,
  ),
);
ThemeData darkTheme=ThemeData(
  textTheme: const TextTheme(
    headline6: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white
    ),
    bodyText1: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      overflow: TextOverflow.ellipsis,
    ),
    caption: TextStyle(
      fontSize: 14,
      color: Colors.white,
      fontWeight: FontWeight.w400,
    ),
  ),
  scaffoldBackgroundColor: HexColor('333739'),
  primarySwatch: Colors.deepOrange,
  appBarTheme: AppBarTheme(
    iconTheme: IconThemeData(color: Colors.white),
    backgroundColor: HexColor('333739'),
    elevation: 1.0,
    titleTextStyle: const TextStyle(color: Colors.white),
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: HexColor('333739'),
      statusBarIconBrightness: Brightness.light,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //type: BottomNavigationBarType.shifting,
    backgroundColor: Colors.black12,
    unselectedItemColor: Colors.grey,
    selectedItemColor: Colors.deepOrangeAccent,
    //showUnselectedLabels: true,
  ),

);