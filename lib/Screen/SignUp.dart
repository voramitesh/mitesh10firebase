import 'package:flutter/material.dart';
import 'package:mitesh10firebase/Authentication/Auth.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {

  TextEditingController txt_email=TextEditingController();
  TextEditingController txt_pasword=TextEditingController();

  Auth a1=Auth();
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
                controller: txt_email,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email,color: Colors.red,),
                    label: Text("Email",style: TextStyle(color: Colors.black),)
                ),
              ),
              TextField(
                controller: txt_pasword,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,color: Colors.red,),
                    label: Text("Password",style: TextStyle(color: Colors.black),)
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                Auth a1=Auth();
                a1.SignUp(txt_email.text, txt_pasword.text);

                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.pinkAccent
                      ,borderRadius: BorderRadius.circular(20)),
                  child: Center(child: Text("Sign Up",style: TextStyle(color: Colors.white),)),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an Account?",style: TextStyle(color: Colors.black),),
                  TextButton(onPressed: (){

                  }, child:Text ("Login",style: TextStyle(color: Colors.red),),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
