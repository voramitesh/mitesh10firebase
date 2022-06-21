import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mitesh10firebase/Screen/Login%20Page.dart';

class SpleshScreen extends StatefulWidget {
  const SpleshScreen({Key? key}) : super(key: key);

  @override
  State<SpleshScreen> createState() => _SpleshScreenState();
}

class _SpleshScreenState extends State<SpleshScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginSCreen(),
        ),
      ),
    );
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.pink,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.fastfood,
                color: Colors.white,
                size: 120,
              ),
              SizedBox(height: 10),
              Text(
                "Taste Me",
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
              SizedBox(height: 10,),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
