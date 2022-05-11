import 'package:flutter/material.dart';

import '../../../utils/su_gbutton.dart';

class Campaignstapefive extends StatefulWidget {
  const Campaignstapefive({Key? key}) : super(key: key);

  @override
  _CampaignstapeoneState createState() => _CampaignstapeoneState();
}

class _CampaignstapeoneState extends State<Campaignstapefive> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.brown,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 8),
          child: SuGButton(
            onPressed: () {},
            title: 'Done',
          ),
        )
      ],
    );
  }
}
