import 'package:flutter/material.dart';

class LoginSCreen extends StatefulWidget {
  const LoginSCreen({Key? key}) : super(key: key);

  @override
  State<LoginSCreen> createState() => _LoginSCreenState();
}

class _LoginSCreenState extends State<LoginSCreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        body: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email,color: Colors.red,),
                  label: Text("Email",style: TextStyle(color: Colors.black),)
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,color: Colors.red,),
                    label: Text("Password",style: TextStyle(color: Colors.black),)
                ),
              ),
              SizedBox(height: 20,),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.pinkAccent
                    ,borderRadius: BorderRadius.circular(20)),
                child: Center(child: Text("Login",style: TextStyle(color: Colors.white),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
