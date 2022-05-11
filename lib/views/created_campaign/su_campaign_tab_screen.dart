// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seepups/controllers/tab_controller.dart';
import 'package:seepups/utils/su_gbutton.dart';
import 'package:seepups/views/created_campaign/campaign_tabsection/su_campaign_step_1.dart';
import 'package:seepups/views/created_campaign/campaign_tabsection/su_campaign_step_2.dart';
import 'package:seepups/views/created_campaign/campaign_tabsection/su_campaign_step_3.dart';
import 'package:seepups/views/created_campaign/campaign_tabsection/su_campaign_step_4.dart';
import 'package:seepups/views/created_campaign/campaign_tabsection/su_campaign_step_5.dart';

import '../../utils/su_colors.dart';

class SuCampaigntabScreen extends StatefulWidget {
  static const String path = 'SuCampaigntabScreen';
  const SuCampaigntabScreen({Key? key}) : super(key: key);

  @override
  _SuCampaigntabScreenState createState() => _SuCampaigntabScreenState();
}

class _SuCampaigntabScreenState extends State<SuCampaigntabScreen>
    with SingleTickerProviderStateMixin {
  final Tabcontrollers _tabControllers = Get.put(Tabcontrollers());
  @override
  void initState() {
    super.initState();
    _tabControllers.tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabControllers.tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.backgroundColor,
      body: Container(
        margin: const EdgeInsets.only(top: 45),
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
                        'Create Campaign',
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
                                        'You must provide all the information below to validate your startup.',
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
                  controller: _tabControllers.tabController,
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
                child: TabBarView(controller: _tabControllers.tabController,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Campaignstapeone(),
                      Campaignstapetwo(),
                      Campaignstapethree(),
                      Campaignstapefour(),
                      Campaignstapefive(),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
