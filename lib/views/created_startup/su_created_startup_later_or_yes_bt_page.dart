// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:seepups/utils/su_colors.dart';
import 'package:seepups/utils/su_gbutton.dart';
import 'package:seepups/utils/su_svgimage.dart';
import 'package:seepups/utils/su_wbutton.dart';
import 'package:seepups/views/Created_startup/su_created_startup_%20tab_screen_page.dart';
import 'package:seepups/views/login/su_login_page.dart';

class Lateroryespage extends StatefulWidget {
  const Lateroryespage({Key? key}) : super(key: key);

  @override
  _CreatedStatuppageState createState() => _CreatedStatuppageState();
}

class _CreatedStatuppageState extends State<Lateroryespage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.backgroundColor,
      body: SafeArea(
        minimum:
            const EdgeInsets.only(top: 45, left: 10, right: 10, bottom: 10),
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Create Startup',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Appcolors.normalfontcolor,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: AspectRatio(
                    aspectRatio: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: SvgPicture.asset(Svgimage.createdstatrupimage),
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Do you want to create',
                            style: TextStyle(
                              color: Appcolors.normalfontcolor,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                            )),
                        TextSpan(
                          text: ' Startup?',
                          style: TextStyle(
                            color: Appcolors.pirimaryColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ])),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 1 / 2.3,
                            child: SuWButton(
                              onPressed: () {
                                Get.to(() => Loginpage());
                              },
                              title: 'Later',
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 1 / 2.3,
                            child: SuGButton(
                              onPressed: () {
                                Get.to(() => SUCreatedstartuppage());
                              },
                              title: 'Yes',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
