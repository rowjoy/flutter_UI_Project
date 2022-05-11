// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:seepups/utils/su_colors.dart';
import 'package:seepups/utils/su_simple_textfrield.dart';

class Startupstepfive extends StatefulWidget {
  const Startupstepfive({Key? key}) : super(key: key);

  @override
  _SustapefiveState createState() => _SustapefiveState();
}

class _SustapefiveState extends State<Startupstepfive> {
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
                        'Company',
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
                      hintText: 'TIN Number',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SimpleTextFromField(
                      maxLines: 1,
                      hintText: 'Trade License Number',
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Text(
                        'Authority',
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
                      hintText: 'NID',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    SimpleTextFromField(
                      maxLines: 1,
                      hintText: 'Driving License Number',
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
