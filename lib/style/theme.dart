import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData themeLight = ThemeData(
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      titleTextStyle: TextStyle(color: Colors.black, fontSize: 24),
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      )),
  scaffoldBackgroundColor: Colors.white,
  primarySwatch: Colors.deepOrange,
  textTheme: const TextTheme(
    titleLarge: TextStyle(color: Colors.black,fontSize: 20),
    //titleLarge: TextStyle(color: Colors.red,fontSize: 20),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    showUnselectedLabels: true,
    selectedItemColor: Colors.deepOrange,
    unselectedItemColor: Colors.grey,
    elevation: 0,
  ),
);

ThemeData themeDark = ThemeData(
  appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF00001a),
      titleTextStyle: TextStyle(color: Colors.white,fontSize: 24),
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,

      ),
      iconTheme: IconThemeData(
        color: Colors.white,
      )
  ),

  scaffoldBackgroundColor: const Color(0xFF00001a),
  primarySwatch: Colors.deepOrange,
  textTheme: const TextTheme(
    titleLarge: TextStyle(color: Colors.white,fontSize: 24),



  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    showUnselectedLabels: true,
    selectedItemColor:Colors.deepOrange,
    unselectedItemColor: Colors.grey,
    backgroundColor: Color(0xFF00001a),
    elevation: 0,
  ),


);
