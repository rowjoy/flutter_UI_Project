// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:seepups/utils/su_colors.dart';
import 'package:seepups/utils/su_linkupload.dart';
import 'package:seepups/utils/su_simple_textfrield.dart';

class Startupstepthree extends StatefulWidget {
  const Startupstepthree({Key? key}) : super(key: key);

  @override
  _SustapethreeState createState() => _SustapethreeState();
}

class _SustapethreeState extends State<Startupstepthree> {
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
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  shrinkWrap: true,
                  children: [
                    Container(
                      child: Text(
                        'Invite VIP Investor',
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
                    SimpleTextFromField(
                      maxLines: 1,
                      hintText: 'Name',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SimpleTextFromField(
                      maxLines: 1,
                      hintText: 'Email',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    LinkUploadfield(
                      onTap: () {},
                      hintext: 'Social Media Link',
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
