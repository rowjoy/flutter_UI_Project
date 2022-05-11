// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seepups/utils/su_colors.dart';
import 'package:seepups/utils/su_gbutton.dart';
import 'package:seepups/views/Created_startup/startup_tabsection/su_startup_step_1_tab.dart';
import 'package:seepups/views/Created_startup/startup_tabsection/su_startup_step_2_tab.dart';
import 'package:seepups/views/Created_startup/startup_tabsection/su_startup_step_3_tab.dart';
import 'package:seepups/views/Created_startup/startup_tabsection/su_startup_step_4_tab.dart';
import 'package:seepups/views/Created_startup/startup_tabsection/su_startup_step_5_tab.dart';
import 'package:seepups/views/Created_startup/su_statup_sucessfull_page.dart';

class SUCreatedstartuppage extends StatefulWidget {
  static const String path = 'SUCreatedstartuppage';
  const SUCreatedstartuppage({Key? key}) : super(key: key);

  @override
  _CreatedstartuppageState createState() => _CreatedstartuppageState();
}

class _CreatedstartuppageState extends State<SUCreatedstartuppage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.backgroundColor,
      body: Container(
        margin: EdgeInsets.only(top: 45),
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Create Startup',
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
                  ],
                ),
              ),
            ),
            Container(
              height: 42,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 2.5,
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 0.2,
                    offset: Offset(0.5, 0.5), // Shadow position
                  ),
                ],
              ),
              child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.white,
                  unselectedLabelColor: Appcolors.normalfontcolor,
                  labelStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                  isScrollable: false,
                  indicator: BoxDecoration(
                    color: Appcolors.buttonColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(1),
                      topRight: Radius.circular(1),
                    ),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2.5,
                        color: Appcolors.buttonColor.withOpacity(0.4),
                        blurRadius: 0.2,
                        offset: Offset(0.5, 0.5), // Shadow position
                      ),
                    ],
                  ),
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(text: 'Step 1'),
                    Tab(text: 'Step 2'),
                    Tab(text: 'Step 3'),
                    Tab(text: 'Step 4'),
                    Tab(text: 'Step 5'),
                  ]),
            ),
            Expanded(
              child: Container(
                child: TabBarView(controller: _tabController,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      StartupStepone(),
                      Startupsteptwo(),
                      Startupstepthree(),
                      StartupStepfour(),
                      Startupstepfive(),
                    ]),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 8),
              child: SuGButton(
                onPressed: () {
                  Get.to(() => StatupSucessfullydone());
                },
                title: 'Next',
              ),
            )
          ],
        ),
      ),
    );
  }
}
