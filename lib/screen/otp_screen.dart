import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:poonolil/widgets/otp_box.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: screenWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff96351E).withOpacity(0.40),
            Color(0xffFFFFFF).withOpacity(0.70),
          ]),
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/logo/poonolil_logo_black.png",
              height: 80,
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                children: [
                  Text(
                    "Welcome Back",
                    style: TextStyle(
                      fontFamily: "Fligen Regular",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                children: [
                  Text(
                    "Balendu Divakar".toUpperCase(),
                    style: TextStyle(
                      fontFamily: "Fligen Regular",
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                children: [
                  Text(
                    "0170198748",
                    style: TextStyle(
                      fontFamily: "Fligen Regular",
                      fontSize: 15,
                      color: Color(0xff8A7E7C),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: screenHeight * 0.120,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                children: [
                  Text(
                    "Enter the OTP",
                    style: TextStyle(
                      fontFamily: "MADE Outer Sans Thin",
                      fontSize: 18,
                      color: Color(0xff8A7E7C),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                otpBox(),
                otpBox(),
                otpBox(),
                otpBox(),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didnt Get the OTP ? ",
                  style: TextStyle(
                    fontFamily: "MADE Outer Sans Thin",
                    fontSize: 14,
                    color: Color(0xff73635C),
                  ),
                ),
                Text(
                  "SEND IT AGAIN",
                  style: TextStyle(
                    fontFamily: "MADE Outer Sans Thin",
                    fontSize: 14,
                    color: Color(0xff96351E),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.300,
            ),
            Container(
              width: screenWidth * 0.800,
              height: screenHeight * 0.080,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                color: Color(0xff96351E),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Continue".toUpperCase(),
                      style: TextStyle(
                        fontFamily: "MADE Outer Sans Thin",
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SvgPicture.asset(
                      "assets/icons/arrow-down-right.svg",
                      height: 40,
                      width: 30,
                      color: Color(0xffDBB98F),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
