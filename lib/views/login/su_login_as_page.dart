// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seepups/controllers/login/login_as.dart';
import 'package:seepups/utils/su_colors.dart';
import 'package:seepups/utils/su_custom_appber.dart';
import 'package:seepups/utils/su_gbutton.dart';
import 'package:seepups/utils/su_svgimage.dart';
import 'package:get/get.dart';

class Loginaspage extends StatefulWidget {
  static const String path = 'Loginaspage';

  const Loginaspage({Key? key}) : super(key: key);

  @override
  _SuLoginpageState createState() => _SuLoginpageState();
}

class _SuLoginpageState extends State<Loginaspage> {
  int indexnumber = 0;
  final Loginas loginas = Get.put(Loginas());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Customappber(
              label: 'Login',
            ),
            Expanded(
              child: Container(
                child: AspectRatio(
                  aspectRatio: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
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
                    top: 20, left: 10, right: 10, bottom: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        'Login as',
                        style: TextStyle(
                          color: Appcolors.normalfontcolor,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          userselected(1, Svgimage.investorimage, 'Investor'),
                          userselected(2, Svgimage.startupimage, 'Startup'),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Text(
                            'OR',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            'Login as Guest user',
                            style: TextStyle(
                              color: Appcolors.pirimaryColor,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SuGButton(
                      onPressed: () {
                        loginas.login(indexnumber);
                      },
                      title: 'Next',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget userselected(int index, String assetName, String data) {
    return GestureDetector(
      onTap: () {
        setState(() {
          indexnumber = index;
        });
        print(indexnumber);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 1 / 2.4,
        height: MediaQuery.of(context).size.height * 1 / 7,
        decoration: BoxDecoration(
          color: index == indexnumber ? Appcolors.pirimaryColor : Colors.white,
          borderRadius: BorderRadius.circular(4),
          boxShadow: [
            BoxShadow(
              spreadRadius: 0.5,
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 1,
              offset: Offset(0, 1), // Shadow position
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                assetName,
                width: 50,
                height: 50,
                color:
                    index == indexnumber ? Colors.white : Appcolors.buttonColor,
              ),
              Text(
                data,
                style: TextStyle(
                  color: index == indexnumber
                      ? Colors.white
                      : Appcolors.pirimaryColor,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
