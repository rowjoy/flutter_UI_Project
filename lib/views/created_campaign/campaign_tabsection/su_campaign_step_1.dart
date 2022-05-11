import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seepups/controllers/tab_controller.dart';

import '../../../utils/su_gbutton.dart';

class Campaignstapeone extends StatefulWidget {
  const Campaignstapeone({Key? key}) : super(key: key);

  @override
  _CampaignstapeoneState createState() => _CampaignstapeoneState();
}

class _CampaignstapeoneState extends State<Campaignstapeone> {
  final Tabcontrollers _tabcontrollers = Get.put(Tabcontrollers());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.deepOrange,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 8),
          child: SuGButton(
            onPressed: () {
              _tabcontrollers.tabController.animateTo(1);
            },
            title: 'Next',
          ),
        ),
      ],
    );
  }
}
