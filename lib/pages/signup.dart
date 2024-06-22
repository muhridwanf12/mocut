import 'package:flutter/material.dart';
import 'package:mocut/pages/login.dart';
import 'package:mocut/pages/welcomepage.dart';
import 'package:mocut/widgets/widgets.dart';
import 'package:mocut/controllers/Controllers.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar:  const Back(),
      body: Padding(
        padding: const EdgeInsets.all(60),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Header1(text: "Sign Up"),
              const SizedBox(height: 52),

              // Textfield name
              TextForm(label: "Name", formcontroller: Controllers.name),
              const SizedBox(height: 30),

              // Textfield email or phone
              FormPassword(label: "Email or phone number", formcontroller: Controllers.phone),
              const SizedBox(height: 16),


              // Info term and service, privacy policy
              Row( 
                children: [
                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(
                      Icons.check_circle_outline,
                      color: Colors.green,
                    )
                  ),
                  const TextWithLink(
                    textNonLink1: "By signing up. you agree to the ",
                    textLink1: "Terms of service ", 
                    textNonLink2: "and ",
                    textLink2: "Privacy policy",
                    color: Colors.blue, 
                    destinationPage1: WelcomePage(),
                    destinationPage2: WelcomePage(),
                  )
                ],
              ),
              const SizedBox(height: 20,),

              // SIgn up button
              const ButtonSubmit(text: "Sign Up", destinationPage: WelcomePage()),
              const SizedBox(height: 30),

              // option dign up with google
              const OptionLogin(),
              const SizedBox(height: 50,),


              // direct to log in page
              const Center(
                child:TextWithLink(
                  textNonLink1: "Already have an account? ",
                  textLink1: "Sign in", 
                  color: Colors.blue, 
                  destinationPage1: Login()
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



