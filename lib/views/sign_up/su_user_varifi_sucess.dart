// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seepups/controllers/sign_up/sign_up.dart';
import 'package:seepups/utils/su_colors.dart';
import 'package:seepups/utils/su_gbutton.dart';
import 'package:seepups/utils/su_svgimage.dart';
import 'package:get/get.dart';

import 'package:seepups/views/created_startup/su_created_startup_%20tab_screen_page.dart';
import 'package:seepups/views/created_startup/su_created_startup_later_or_yes_bt_page.dart';

class VerifiSucessfullypagedone extends StatefulWidget {
  const VerifiSucessfullypagedone({Key? key}) : super(key: key);

  @override
  _SucessfullypageState createState() => _SucessfullypageState();
}

class _SucessfullypageState extends State<VerifiSucessfullypagedone> {
  final Signupas signupas = Get.put(Signupas());
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
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
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
                                  'Submitted Personal Information',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Appcolors.pirimaryColor,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SuGButton(
                  onPressed: () {
                    if (signupas.indexnumber == 1) {
                      Get.to(() => Lateroryespage());
                    } else if (signupas.indexnumber == 2) {
                      Get.to(() => SUCreatedstartuppage());
                    }
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
