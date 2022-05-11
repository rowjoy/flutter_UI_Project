// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seepups/utils/su_colors.dart';
import 'package:seepups/utils/su_gbutton.dart';
import 'package:seepups/utils/su_svgimage.dart';
import 'package:seepups/utils/su_wbutton.dart';
import 'package:get/get.dart';
import 'package:seepups/views/login/su_login_as_page.dart';
import 'package:seepups/views/sign_up/su_sign_up_as_page.dart';

class LoginSiginbtScreen extends StatefulWidget {
  static const String path = 'LoginSiginbtnscreen';
  const LoginSiginbtScreen({Key? key}) : super(key: key);

  @override
  _SplashpageState createState() => _SplashpageState();
}

class _SplashpageState extends State<LoginSiginbtScreen> {
  @override
  void initState() {
    Svgimage.splashimage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.backgroundColor,
      body: SafeArea(
        minimum: EdgeInsets.only(left: 10, right: 10, bottom: 8),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: AspectRatio(
                        aspectRatio: 1.3,
                        child: SvgPicture.asset(
                          Svgimage.splashimage,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Container(
                            child: Column(
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Welcome',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Appcolors.normalfontcolor,
                                  ),
                                ),
                                Text(
                                  'to',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Appcolors.normalfontcolor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                              child: Text(
                            'SeedUps',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Appcolors.pirimaryColor,
                            ),
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    SuGButton(
                      title: 'Login',
                      onPressed: () {
                        Get.to(() => Loginaspage());
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SuWButton(
                      onPressed: () {
                        Get.to(() => SignUpaspage());
                      },
                      title: 'Sign Up',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
