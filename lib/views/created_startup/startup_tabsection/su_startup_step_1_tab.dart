// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:seepups/utils/su_colors.dart';
import 'package:seepups/utils/su_selectedfield.dart';
import 'package:seepups/utils/su_simple_textfrield.dart';
import 'package:seepups/utils/su_uploadfield.dart';

class StartupStepone extends StatefulWidget {
  const StartupStepone({Key? key}) : super(key: key);

  @override
  _SuStapeoneState createState() => _SuStapeoneState();
}

class _SuStapeoneState extends State<StartupStepone> {
  var statusitem = 0;
  List selectstatus = [
    "Campaign creator status",
    "Status 1",
    "Status 2",
    "Status 3",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.backgroundColor,
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: ListView(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  shrinkWrap: true,
                  children: [
                    SimpleTextFromField(
                      maxLines: 1,
                      hintText: 'Company Name',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SimpleTextFromField(
                      keyboardType: TextInputType.text,
                      maxLines: 5,
                      hintText: 'Create Pitch',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    //Campaign creator status
                    Selectedfield(
                      value: statusitem,
                      items: [
                        for (int i = 0; i < selectstatus.length; i++)
                          DropdownMenuItem(
                            value: i,
                            child: Text(selectstatus[i]),
                          ),
                      ],
                      onChanged: (dynamic value) {
                        setState(() {
                          statusitem = value!;
                        });
                      },
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Container(
                      child: Text(
                        '3 Reason to create startup',
                        style: TextStyle(
                          color: Appcolors.normalfontcolor,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    SimpleTextFromField(
                      maxLines: 1,
                      hintText: 'Reason 1',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SimpleTextFromField(
                      maxLines: 1,
                      hintText: 'Reason 2',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SimpleTextFromField(
                      maxLines: 1,
                      hintText: 'Reason 3',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Uploadfield(
                      hintext: 'Upload Photos/Videos',
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Uploadfield(
                      hintext: 'Upload Company logo',
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SimpleTextFromField(
                      maxLines: 1,
                      hintText: 'Write your company category',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
