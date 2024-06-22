import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mocut/pages/forgot_password.dart';
import 'package:mocut/pages/signup.dart';
import 'package:mocut/pages/welcomepage.dart';
import 'package:mocut/controllers/Controllers.dart';
import 'package:mocut/widgets/widgets.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {

  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const Back(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 60, right: 60),
        child: Column(
          children: [
            const Header1(text: "Sign In"),
            const SizedBox(height: 52),

            // textfield for email or phone number
            TextForm(label: "Email or phone number", formcontroller: Controllers.email),
            const SizedBox(height: 30),

            // textfield for password
            FormPassword(label: "Password", formcontroller: Controllers.password),
            const SizedBox(height: 16),


            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                // check box remember me
                Row(
                  children: [
                    Checkbox(
                          value: rememberMe,
                            onChanged: (bool? value) {
                              setState(() {
                                rememberMe = value ?? false;
                              });
                            },
                    ),
                    Text(
                      "Remember me",
                      style: GoogleFonts.poppins(
                      fontSize: 13 
                      )
                    ),
                  ],
                ),


                // Link to forget password page
                const Center(
                  child: TextWithLink(
                      textLink1: "Forget password?",
                      color: Colors.red,
                      destinationPage1: ForgotPwd(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 22),


            // Login button
            const ButtonSubmit(
                text: "Log in",
                destinationPage: WelcomePage(),
            ),
            const SizedBox(height: 30),


            // option to login with google
            const OptionLogin(),
            const SizedBox(height: 50),


            // Direct to page sign up
            const Center(
              child: TextWithLink(
                textNonLink1: "Don't have an account? ",
                textLink1: "Sign up" , 
                color: Colors.blue, 
                destinationPage1: Signup()
              ),
            )
          ],
        ),
      ),
    );
  }
}




