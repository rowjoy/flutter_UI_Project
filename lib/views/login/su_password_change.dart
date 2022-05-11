// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seepups/utils/su_colors.dart';
import 'package:seepups/utils/su_custom_Textfromfield.dart';
import 'package:seepups/utils/su_custom_appber.dart';
import 'package:seepups/utils/su_gbutton.dart';
import 'package:seepups/utils/su_svgimage.dart';
import 'package:get/get.dart';
import 'package:seepups/views/login/su_Pass_chan_otp_page.dart';

class Passwordchange extends StatefulWidget {
  static const String path = 'PasswordChange';
  const Passwordchange({Key? key}) : super(key: key);

  @override
  _PasswordchangeState createState() => _PasswordchangeState();
}

class _PasswordchangeState extends State<Passwordchange> {
  TextEditingController phoneController = TextEditingController();
  var fromkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Customappber(label: 'Password reset'),
            Expanded(
              child: Container(
                child: AspectRatio(
                  aspectRatio: 2,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: SvgPicture.asset(Svgimage.passwordimage),
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Appcolors.backgroundColor,
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 7,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 55, left: 15, right: 15, bottom: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text(
                        'Enter your Registered Phone Number',
                        style: TextStyle(
                          fontSize: 18,
                          color: Appcolors.normalfontcolor,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Form(
                      key: fromkey,
                      child: CustomTextFromField(
                        label: 'Phone Number',
                        hintText: 'Type here',
                        obscureText: false,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(11),
                        ],
                        controller: phoneController,
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SvgPicture.asset(SvgIcon.phoneIcon),
                        ),
                        validator: (value) {
                          String patttern = r'(^[0][1][346789][0-9]{8}$)';
                          RegExp regExp = new RegExp(patttern);

                          if (value!.isEmpty) {
                            return 'Please enter mobile number';
                          } else if (!regExp.hasMatch(value)) {
                            return 'Please enter valid mobile number';
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    SuGButton(
                      onPressed: () {
                        if (fromkey.currentState!.validate()) {
                          fromkey.currentState!.save();
                          Get.snackbar('Watting', 'Check your sms send OTP');
                          Get.to(() => OTPpage());
                        }
                      },
                      title: 'Confirm',
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
