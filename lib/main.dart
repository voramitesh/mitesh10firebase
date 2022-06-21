


import 'package:flutter/material.dart';
import 'package:mitesh10firebase/Screen/Login%20Page.dart';
import 'package:mitesh10firebase/Screen/Splesh%20Screen.dart';
void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>SpleshScreen(),
        '/login':(context)=>LoginSCreen(),
      },
    ),
  );
}