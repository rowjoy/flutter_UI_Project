// ignore_for_file: prefer_const_constructors, equal_keys_in_map

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seepups/views/Created_startup/su_created_startup_%20tab_screen_page.dart';
import 'package:seepups/views/created_campaign/su_campaign_tab_screen.dart';
import 'package:seepups/views/login/su_Pass_chan_otp_page.dart';
import 'package:seepups/views/login/su_login_as_page.dart';
import 'package:seepups/views/login/su_login_page.dart';
import 'package:seepups/views/login/su_new_password_page.dart';
import 'package:seepups/views/login/su_password_change.dart';
import 'package:seepups/views/sign_up/su_otp_page.dart';
import 'package:seepups/views/sign_up/su_sign_up_as_page.dart';
import 'package:seepups/views/sign_up/su_signup_page.dart';
import 'package:seepups/views/sign_up/su_user_verification.dart';
import 'package:seepups/views/splash/su_login_sigin_bt_page.dart';
import 'package:seepups/views/splash/su_splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: Splashpage.path,
      routes: {
        Splashpage.path: (context) => Splashpage(),
        LoginSiginbtScreen.path: (context) => LoginSiginbtScreen(),
        Loginaspage.path: (context) => Loginaspage(),

        SignUpaspage.path: (context) => SignUpaspage(),
        Signuppage.path: (context) => SignUpaspage(),
        Loginpage.path: (context) => Loginpage(),
        Passwordchange.path: (context) => Passwordchange(),
        //password chenge OTP page
        OTPpage.path: (context) => OTPpage(),
        NewPasswordpage.path: (context) => NewPasswordpage(),
        SignUpOTPpage.path: (context) => SignUpOTPpage(),
        Userverificationpage.path: (context) => Userverificationpage(),
        // Created start up page
        //Created start up tab screen
        SUCreatedstartuppage.path: (context) => SUCreatedstartuppage(),
        SuCampaigntabScreen.path: (context) => SuCampaigntabScreen(),
      },
    );
  }
}
