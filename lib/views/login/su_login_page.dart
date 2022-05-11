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
import 'package:seepups/views/login/su_password_change.dart';

class Loginpage extends StatefulWidget {
  static const String path = 'Loginpage';
  const Loginpage({Key? key}) : super(key: key);

  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  var fromkey = GlobalKey<FormState>();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Customappber(label: 'Login'),
            Expanded(
              child: Container(
                child: AspectRatio(
                  aspectRatio: 2.5,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: SvgPicture.asset(Svgimage.loginasimage),
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
                                String patttern = r'(^[0][1][346789][0-9]{8}$)';
                                RegExp regExp = new RegExp(patttern);

                                if (value!.isEmpty) {
                                  return 'Please enter mobile number';
                                } else if (!regExp.hasMatch(value)) {
                                  return 'Please enter valid mobile number';
                                }
                              },
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            CustomTextFromField(
                              label: 'Password',
                              hintText: 'Type here',
                              obscureText: isObscure,
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                LengthLimitingTextInputFormatter(8),
                              ],
                              controller: passwordcontroller,
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
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => Passwordchange());
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 10, top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Forget password?',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 14,
                                    decoration: TextDecoration.underline,
                                    decorationThickness: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      SuGButton(
                        onPressed: () {
                          if (fromkey.currentState!.validate()) {
                            fromkey.currentState!.save();
                            Get.snackbar('Successfully', '');
                          }
                        },
                        title: 'Login',
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
