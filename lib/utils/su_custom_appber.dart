// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seepups/utils/su_colors.dart';

class Customappber extends StatelessWidget {
  final String label;
  const Customappber({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8, bottom: 20, top: 10),
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                Get.back();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Appcolors.normalfontcolor,
              )),
          SizedBox(
            width: MediaQuery.of(context).size.width * 1 / 9.5,
          ),
          Text(
            label,
            style: TextStyle(
              color: Appcolors.normalfontcolor,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
