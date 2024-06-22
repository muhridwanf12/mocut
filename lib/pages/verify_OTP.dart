import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mocut/controllers/Controllers.dart';
import 'package:mocut/pages/forgot_password.dart';
import 'package:mocut/widgets/widgets.dart';

class VerifyOTP extends StatefulWidget {
  const VerifyOTP({super.key});

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const Back(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 60),
        child: Column(
          children: [
            const Header1(text: "Verify OTP"),
            const SizedBox(height: 45,),

            Text(
              "Code has been send to ***333",
              style: GoogleFonts.poppins(
                fontSize: 16
              ),
            ),

            // textfield for OTP
            TextForm(
              formcontroller: Controllers.otp,
              label: "",
            ),
            const TextWithLink(
              textNonLink1: "Didn't receive code? ",
              textLink1: "Resend code", 
              color: Colors.blue, 
              destinationPage1: ForgotPwd()
            )




          ],
        ),
      ),
    );
  }
}