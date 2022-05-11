// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:seepups/controllers/login/login_otp_submission.dart';
import 'package:seepups/utils/su_colors.dart';
import 'package:seepups/utils/su_custom_appber.dart';
import 'package:seepups/utils/su_gbutton.dart';
import 'package:seepups/utils/su_svgimage.dart';
import 'package:get/get.dart';

class OTPpage extends StatefulWidget {
  static const String path = "OTPpage";
  const OTPpage({Key? key}) : super(key: key);

  @override
  _OTPpageState createState() => _OTPpageState();
}

class _OTPpageState extends State<OTPpage> {
  final OTPSUB otpsub = Get.put(OTPSUB());
  var fromkey = GlobalKey<FormState>();
  TextEditingController pin1 = TextEditingController();
  TextEditingController pin2 = TextEditingController();
  TextEditingController pin3 = TextEditingController();
  TextEditingController pin4 = TextEditingController();
  TextEditingController pin5 = TextEditingController();
  TextEditingController pin6 = TextEditingController();
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;
  late FocusNode pin5FocusNode;
  late FocusNode pin6FocusNode;
  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    pin5FocusNode.dispose();
    pin6FocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Customappber(label: 'OTP Submission'),
            Expanded(
              child: Container(
                child: AspectRatio(
                  aspectRatio: 2,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                    child: SvgPicture.asset(Svgimage.otpimage),
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
                    top: 70, bottom: 8, left: 10, right: 10),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'Enter the 6 digit OTP',
                        style: TextStyle(
                          color: Appcolors.normalfontcolor,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 8, right: 8),
                      child: Form(
                        key: fromkey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            OtpForm(
                              controller: pin1,
                              onChanged: (value) {
                                otpsub.nextfiled(value, pin2FocusNode);
                              },
                            ),
                            OtpForm(
                              controller: pin2,
                              focusNode: pin2FocusNode,
                              onChanged: (value) {
                                otpsub.nextfiled(value, pin3FocusNode);
                              },
                            ),
                            OtpForm(
                              controller: pin3,
                              focusNode: pin3FocusNode,
                              onChanged: (value) {
                                otpsub.nextfiled(value, pin4FocusNode);
                              },
                            ),
                            OtpForm(
                              controller: pin4,
                              focusNode: pin4FocusNode,
                              onChanged: (value) {
                                otpsub.nextfiled(value, pin5FocusNode);
                              },
                            ),
                            OtpForm(
                              controller: pin5,
                              focusNode: pin5FocusNode,
                              onChanged: (value) {
                                otpsub.nextfiled(value, pin6FocusNode);
                              },
                            ),
                            OtpForm(
                              controller: pin6,
                              focusNode: pin6FocusNode,
                              onChanged: (value) {
                                pin6FocusNode.unfocus();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    SuGButton(
                      onPressed: () {
                        otpsub.otpsub(pin1, pin2, pin3, pin4, pin5, pin6);
                      },
                      title: 'Varify',
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

class OtpForm extends StatelessWidget {
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  const OtpForm({
    Key? key,
    this.controller,
    this.focusNode,
    this.onChanged,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            spreadRadius: 1,
            color: Appcolors.containershadow.withOpacity(0.1),
            blurRadius: 2,
            offset: Offset(5, -5), // Shadow position
          ),
        ],
      ),
      child: TextFormField(
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        validator: validator,
        controller: controller,
        focusNode: focusNode,
        autofocus: true,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        obscureText: false,
        style: TextStyle(
          fontSize: 24,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
        onChanged: onChanged,
      ),
    );
  }
}
