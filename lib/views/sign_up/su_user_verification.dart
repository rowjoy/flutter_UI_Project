// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:seepups/utils/su_colors.dart';
import 'package:seepups/utils/su_gbutton.dart';
import 'package:seepups/utils/su_linkupload.dart';
import 'package:seepups/utils/su_simple_textfrield.dart';
import 'package:get/get.dart';
import 'package:seepups/views/sign_up/su_user_varifi_sucess.dart';

class Userverificationpage extends StatefulWidget {
  static const String path = 'Userverificationpage';
  const Userverificationpage({Key? key}) : super(key: key);

  @override
  _UservericationpageState createState() => _UservericationpageState();
}

class _UservericationpageState extends State<Userverificationpage> {
  final fromkey = GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController streetcontroller = TextEditingController();
  TextEditingController apartcontroller = TextEditingController();
  TextEditingController citycontroller = TextEditingController();
  TextEditingController statecontroller = TextEditingController();
  TextEditingController zipcontroller = TextEditingController();
  TextEditingController birthcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController ssncontroller = TextEditingController();
  TextEditingController dlncontroller = TextEditingController();
  TextEditingController nidcontroller = TextEditingController();
  TextEditingController incomcontroller = TextEditingController();
  TextEditingController netwcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.backgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 45, left: 10, right: 10, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text(
                  'User Verification',
                  style: TextStyle(
                    color: Appcolors.normalfontcolor,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Column(
                    children: [
                      Container(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'You must provide all the information below to validate your profile.',
                                style: TextStyle(
                                  color: Appcolors.normalfontcolor,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: ' (Required)*',
                                style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 14,
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
              Expanded(
                child: Form(
                  key: fromkey,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      SimpleTextFromField(
                        hintText: 'Full Name',
                        controller: namecontroller,
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(11),
                        ],
                        validator: (value) {
                          String patttern = r'(^[A-Za-z a-z]{3,20})';
                          RegExp regExp = new RegExp(patttern);

                          if (value!.isEmpty) {
                            return 'Please enter your name';
                          } else if (!regExp.hasMatch(value)) {
                            return 'Please enter valid name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SimpleTextFromField(
                        hintText: 'Email',
                        controller: emailcontroller,
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(30),
                        ],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email';
                          } else if (!GetUtils.isEmail(value)) {
                            return 'Please enter valid name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SimpleTextFromField(
                        hintText: 'Street Address',
                        controller: streetcontroller,
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(30),
                        ],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Street Address';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SimpleTextFromField(
                        hintText: 'Apartment No',
                        controller: apartcontroller,
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(30),
                        ],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Apartment No';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SimpleTextFromField(
                        hintText: 'City',
                        controller: citycontroller,
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(30),
                        ],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your City';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SimpleTextFromField(
                        hintText: 'State',
                        controller: statecontroller,
                        keyboardType: TextInputType.text,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(30),
                        ],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your State';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SimpleTextFromField(
                        hintText: 'Zip Code',
                        controller: zipcontroller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(11),
                        ],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Zip Code';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SimpleTextFromField(
                        hintText: 'Birthdate',
                        controller: birthcontroller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(11),
                        ],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your Birthdate';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SimpleTextFromField(
                        hintText: 'Phone No',
                        controller: phonecontroller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(11),
                        ],
                        validator: (value) {
                          String patttern = r'(^[0][1][346789][0-9]{8}$)';
                          RegExp regExp = new RegExp(patttern);

                          if (value!.isEmpty) {
                            return 'Please enter mobile number';
                          } else if (!regExp.hasMatch(value)) {
                            return 'Please enter valid mobile number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SimpleTextFromField(
                        hintText: 'SSN(Social security number)',
                        controller: ssncontroller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(11),
                        ],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your SSN';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SimpleTextFromField(
                        hintText: 'Driving License Number',
                        controller: dlncontroller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(11),
                        ],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter Driving License Number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SimpleTextFromField(
                        hintText: 'NID',
                        controller: nidcontroller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(11),
                        ],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter NID Number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SimpleTextFromField(
                        hintText: 'Income(Annualy)',
                        controller: incomcontroller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(11),
                        ],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter Income(Annualy)';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      SimpleTextFromField(
                        hintText: 'Net Worth',
                        controller: netwcontroller,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(11),
                        ],
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter Net Worth';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      LinkUploadfield(
                        hintext: 'Social Media Link',
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SuGButton(
                onPressed: () {
                  if (fromkey.currentState!.validate()) {
                    fromkey.currentState!.save();
                    Get.to(() => VerifiSucessfullypagedone());
                  }
                },
                title: 'Submit',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
