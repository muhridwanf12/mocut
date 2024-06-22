import 'package:flutter/material.dart';
import 'package:mocut/pages/login.dart';
import 'package:mocut/pages/signup.dart';
import 'package:mocut/widgets/widgets.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60.0),
        child: Center(
          child: Column(
            children:[
              const SizedBox(
                height: 134,
              ),
              Image.asset("lib/assets/logo.png"),
              const SizedBox(
                height: 75,
              ),
              const ButtonSubmit(
                text: "Log in",
                destinationPage: Login(),
              ),
              const SizedBox(height: 25,),
              const TextWithLink(
                textNonLink1: "Don't have an account? ", 
                textLink1: "Sign up", 
                color: Colors.blue,
                destinationPage1: Signup(),
              )
            ] ,
          ),
        ),
      )
    );
  }
}

