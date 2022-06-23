import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mitesh10firebase/Authentication/Auth.dart';
import 'package:mitesh10firebase/Screen/Login%20Page.dart';
import 'package:mitesh10firebase/Screen/SignUp.dart';
import 'package:mitesh10firebase/Screen/Splesh%20Screen.dart';
import 'package:mitesh10firebase/Screen/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SpleshScreen(),
        '/login': (context) => LoginSCreen(),
        '/signup': (context) => Signup(),
        '/home': (context) => HomePage(),
      },
    ),
  );
}

