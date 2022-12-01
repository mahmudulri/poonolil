import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:poonolil/screen/otp_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight,
          width: screenWidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/homeback.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: screenHeight * 0.100,
                ),
                Image.asset("assets/logo/poonolil_logo.png"),
                SizedBox(
                  height: screenHeight * 0.450,
                ),
                Container(
                  width: screenWidth * 0.800,
                  height: screenHeight * 0.080,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xff7C6768).withOpacity(0.7),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                            flex: 5,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Phone number".toUpperCase(),
                                hintStyle: TextStyle(
                                  fontFamily: "MADE Outer Sans Thin",
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                                border: InputBorder.none,
                              ),
                            )),
                        Expanded(
                          flex: 1,
                          child: Icon(
                            Icons.phone_android,
                            color: Color(0xffFEF9FA),
                            size: 35,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.020,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => OtpScreen())));
                  },
                  child: Container(
                    width: screenWidth * 0.800,
                    height: screenHeight * 0.080,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color(0xff96351E).withOpacity(0.7),
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
                ),
                SizedBox(
                  height: screenHeight * 0.020,
                ),
                Text(
                  "Or sign in with".toUpperCase(),
                  style: TextStyle(
                    fontFamily: "MADE Outer Sans Thin",
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.010,
                ),
                Container(
                  width: screenWidth * 0.800,
                  height: screenHeight * 0.080,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/icons/apple-button.svg"),
                      SizedBox(
                        width: screenWidth * 0.030,
                      ),
                      SvgPicture.asset("assets/icons/google-button.svg"),
                      SizedBox(
                        width: screenWidth * 0.030,
                      ),
                      SvgPicture.asset("assets/icons/facebook-button.svg"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
