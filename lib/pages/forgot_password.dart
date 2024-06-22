import 'package:flutter/material.dart';
import 'package:mocut/controllers/Controllers.dart';
import 'package:mocut/pages/verify_OTP.dart';
import 'package:mocut/widgets/widgets.dart';

class ForgotPwd extends StatefulWidget {
  const ForgotPwd({super.key});

  @override
  State<ForgotPwd> createState() => _ForgotPwdState();
}

class _ForgotPwdState extends State<ForgotPwd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Back(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          children: [
            const Header1(text: "Verification email or phone number"),
            const SizedBox(height: 50,),


            // tetxfield for email or phone number
            TextForm(
              formcontroller: Controllers.email,
              label: "Email or phone number",
            ),
            const SizedBox(height: 90,),


            // Send OTP button
            const ButtonSubmit(
              text: "Send OTP", 
              destinationPage: VerifyOTP()
            )
          ],
        ),
      ),
    );
  }
}