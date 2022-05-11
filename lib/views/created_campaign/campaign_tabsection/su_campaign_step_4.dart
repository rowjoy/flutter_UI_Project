import 'package:flutter/material.dart';

import '../../../utils/su_gbutton.dart';

class Campaignstapefour extends StatefulWidget {
  const Campaignstapefour({Key? key}) : super(key: key);

  @override
  _CampaignstapeoneState createState() => _CampaignstapeoneState();
}

class _CampaignstapeoneState extends State<Campaignstapefour> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10, right: 10, bottom: 8),
          child: SuGButton(
            onPressed: () {},
            title: 'Next',
          ),
        )
      ],
    );
  }
}
