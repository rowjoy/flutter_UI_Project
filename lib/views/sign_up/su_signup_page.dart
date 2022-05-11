// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new, sized_box_for_whitespace, prefer_final_fields, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seepups/utils/su_colors.dart';
import 'package:seepups/utils/su_custom_Textfromfield.dart';
import 'package:seepups/utils/su_custom_appber.dart';
import 'package:seepups/utils/su_gbutton.dart';
import 'package:seepups/utils/su_svgimage.dart';
import 'package:get/get.dart';
import 'package:seepups/views/sign_up/su_otp_page.dart';

class Signuppage extends StatefulWidget {
  static const String path = 'Signuppage';
  const Signuppage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Signuppage> {
  var fromkey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController newpasswordcontroller = TextEditingController();
  TextEditingController conpasswordcontroller = TextEditingController();
  bool isObscure = true;
  bool isObscurep = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Customappber(label: 'Sign Up'),
              ),
              Expanded(
                child: Container(
                  child: AspectRatio(
                    aspectRatio: 2.5,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 10),
                      child: SvgPicture.asset(Svgimage.signupasimage),
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
                      left: 15, right: 15, top: 30, bottom: 8),
                  child: Container(
                    child: Column(
                      children: [
                        Form(
                          key: fromkey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              CustomTextFromField(
                                label: 'Your name',
                                hintText: 'Write here',
                                obscureText: false,
                                keyboardType: TextInputType.text,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(11),
                                ],
                                controller: namecontroller,
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(SvgIcon.persion),
                                ),
                                validator: (value) {
                                  String patttern = r'(^[A-Za-z a-z]{3,20})';
                                  RegExp regExp = new RegExp(patttern);

                                  if (value!.isEmpty) {
                                    return 'Please enter your name';
                                  } else if (!regExp.hasMatch(value)) {
                                    return 'Please enter valid name';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              CustomTextFromField(
                                label: 'Phone Number',
                                hintText: 'Type here',
                                obscureText: false,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(11),
                                ],
                                controller: phonecontroller,
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(SvgIcon.phoneIcon),
                                ),
                                validator: (value) {
                                  String patttern =
                                      r'(^[0][1][346789][0-9]{8}$)';
                                  RegExp regExp = new RegExp(patttern);

                                  if (value!.isEmpty) {
                                    return 'Please enter mobile number';
                                  } else if (!regExp.hasMatch(value)) {
                                    return 'Please enter valid mobile number';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              CustomTextFromField(
                                label: 'Password',
                                hintText: 'Type here',
                                obscureText: isObscurep,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(8),
                                ],
                                controller: newpasswordcontroller,
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(SvgIcon.lockIcon),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isObscurep = !isObscurep;
                                    });
                                  },
                                  icon: Icon(
                                    isObscurep
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your password';
                                  }
                                },
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              CustomTextFromField(
                                label: 'Confirm Password',
                                hintText: 'Type here',
                                obscureText: isObscure,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(8),
                                ],
                                controller: conpasswordcontroller,
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SvgPicture.asset(SvgIcon.lockIcon),
                                ),
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      isObscure = !isObscure;
                                    });
                                  },
                                  icon: Icon(
                                    isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey,
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your password';
                                  }
                                  if (newpasswordcontroller.text !=
                                      conpasswordcontroller.text) {
                                    return 'Do not match your password';
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SuGButton(
                          onPressed: () {
                            if (fromkey.currentState!.validate()) {
                              fromkey.currentState!.save();
                              Get.to(() => SignUpOTPpage());
                            }
                          },
                          title: 'Confirm',
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
