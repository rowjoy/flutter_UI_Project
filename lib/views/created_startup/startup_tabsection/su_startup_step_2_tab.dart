// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:seepups/utils/su_colors.dart';

import 'package:seepups/utils/su_linkupload.dart';
import 'package:seepups/utils/su_selectedfield.dart';
import 'package:seepups/utils/su_simple_textfrield.dart';
import 'package:seepups/utils/su_uploadfield.dart';

class Startupsteptwo extends StatefulWidget {
  const Startupsteptwo({Key? key}) : super(key: key);

  @override
  _SustapetwoState createState() => _SustapetwoState();
}

class _SustapetwoState extends State<Startupsteptwo> {
  var emstatusitem = 0;
  List emselectstatus = [
    "Employment status",
    "Status 1",
    "Status 2",
    "Status 3",
  ];
  var prstatusitem = 0;
  List prselectstatus = [
    "Privacy Status",
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
                    Container(
                      child: Text(
                        'Enter Your Team Details',
                        style: TextStyle(
                          color: Appcolors.normalfontcolor,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Uploadfield(
                      hintext: 'Upload photo',
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SimpleTextFromField(
                      maxLines: 1,
                      hintText: 'Members Name',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SimpleTextFromField(
                      maxLines: 1,
                      hintText: 'Designation',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SimpleTextFromField(
                      keyboardType: TextInputType.text,
                      maxLines: 5,
                      hintText: 'Bio',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    //Employment status
                    Selectedfield(
                      value: emstatusitem,
                      items: [
                        for (int i = 0; i < emselectstatus.length; i++)
                          DropdownMenuItem(
                            value: i,
                            child: Text(emselectstatus[i]),
                          ),
                      ],
                      onChanged: (dynamic value) {
                        setState(() {
                          emstatusitem = value!;
                        });
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    //Privacy status
                    Selectedfield(
                      value: prstatusitem,
                      items: [
                        for (int i = 0; i < prselectstatus.length; i++)
                          DropdownMenuItem(
                            value: i,
                            child: Text(prselectstatus[i]),
                          ),
                      ],
                      onChanged: (dynamic value) {
                        setState(() {
                          prstatusitem = value!;
                        });
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    LinkUploadfield(
                      onTap: () {},
                      hintext: 'Social Media Link',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    //Business Plan (Upload PDF)
                    Uploadfield(
                      onTap: () {},
                      hintext: 'Business Plan (Upload PDF)',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            height: 30,
                            width: MediaQuery.of(context).size.width * 1 / 4,
                            decoration: BoxDecoration(
                                color: Appcolors.buttonColor,
                                borderRadius: BorderRadius.circular(2)),
                            child: Center(
                              child: Text(
                                'Add More',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
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
