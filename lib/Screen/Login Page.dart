import 'package:flutter/material.dart';
import 'package:mitesh10firebase/Authentication/Auth.dart';

class LoginSCreen extends StatefulWidget {
  const LoginSCreen({Key? key}) : super(key: key);

  @override
  State<LoginSCreen> createState() => _LoginSCreenState();
}

class _LoginSCreenState extends State<LoginSCreen> {
  TextEditingController txt_email=TextEditingController();
  TextEditingController txt_password=TextEditingController();
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
                controller: txt_password,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock,color: Colors.red,),
                    label: Text("Password",style: TextStyle(color: Colors.black),)
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Auth().Login(txt_email.text,txt_password.text,context);
                    Navigator.pushNamed(context, '/home');
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.pinkAccent
                      ,borderRadius: BorderRadius.circular(20)),
                  child: Center(child: Text("Login",style: TextStyle(color: Colors.white),)),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an Account?",style: TextStyle(color: Colors.black),),
                  TextButton(onPressed: (){
                        Navigator.pushNamed(context, '/signup');
                  }, child:Text ("Sign Up",style: TextStyle(color: Colors.red),),),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
