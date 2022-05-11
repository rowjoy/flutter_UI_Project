import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seepups/controllers/tab_controller.dart';

import '../../../utils/su_gbutton.dart';

class Campaignstapetwo extends StatefulWidget {
  const Campaignstapetwo({Key? key}) : super(key: key);

  @override
  _CampaignstapeoneState createState() => _CampaignstapeoneState();
}

class _CampaignstapeoneState extends State<Campaignstapetwo> {
  final Tabcontrollers _tabcontrollers = Get.put(Tabcontrollers());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.black54,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 8),
          child: SuGButton(
            onPressed: () {
              _tabcontrollers.tabController.animateTo(2);
            },
            title: 'Next',
          ),
        )
      ],
    );
  }
}
