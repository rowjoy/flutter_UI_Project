// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seepups/utils/su_colors.dart';
import 'package:seepups/utils/su_gbutton.dart';
import 'package:seepups/utils/su_svgimage.dart';
import 'package:get/get.dart';
import 'package:seepups/views/sign_up/su_user_verification.dart';

class SignupSucessfullypagedone extends StatefulWidget {
  const SignupSucessfullypagedone({Key? key}) : super(key: key);

  @override
  _SucessfullypageState createState() => _SucessfullypageState();
}

class _SucessfullypageState extends State<SignupSucessfullypagedone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 8, left: 10, right: 10, top: 200),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1.5,
                          child: SvgPicture.asset(Svgimage.sucessfullyimage),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                'You Have Successfully',
                                style: TextStyle(
                                  color: Appcolors.normalfontcolor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Signed Up',
                                style: TextStyle(
                                  color: Appcolors.pirimaryColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SuGButton(
                  onPressed: () {
                    Get.to(() => Userverificationpage());
                  },
                  title: 'Done',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
