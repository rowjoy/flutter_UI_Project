// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:seepups/utils/su_colors.dart';
import 'package:seepups/utils/su_linkupload.dart';
import 'package:seepups/utils/su_simple_textfrield.dart';

class StartupStepfour extends StatefulWidget {
  const StartupStepfour({Key? key}) : super(key: key);

  @override
  _SuStapefourState createState() => _SuStapefourState();
}

class _SuStapefourState extends State<StartupStepfour> {
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
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SimpleTextFromField(
                      maxLines: 1,
                      hintText: 'Enter Company Website Link',
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
                    SimpleTextFromField(
                      maxLines: 1,
                      hintText: 'Google rank',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SimpleTextFromField(
                      maxLines: 1,
                      hintText: 'WiKi status',
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
