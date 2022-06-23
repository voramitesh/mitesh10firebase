import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Information",style: TextStyle(color: Colors.white),),centerTitle: true,),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.pink,
                child:Center(child: Text("${_auth.currentUser!.email}",style: TextStyle(color: Colors.white),)),
              ),
              SizedBox(height: 10,),
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.pink,
                child:Center(child: Text("${_auth.currentUser!.uid}",style: TextStyle(color: Colors.white),)),
              ),SizedBox(height: 70,),
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, '/login');
              }, child: Text("Sign Out"),style: ElevatedButton.styleFrom(primary: Colors.pink),
              )
            ],
          ),
        ),
      ),
    );
  }
}
