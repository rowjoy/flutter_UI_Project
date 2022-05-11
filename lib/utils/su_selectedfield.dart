// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:seepups/utils/su_colors.dart';
import 'package:seepups/utils/su_svgimage.dart';

class Selectedfield extends StatelessWidget {
  final Object? value;
  final List<DropdownMenuItem<Object>>? items;
  final void Function(Object?) onChanged;
  const Selectedfield({
    Key? key,
    required this.value,
    required this.items,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            spreadRadius: 0.5,
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 1,
            offset: Offset(1, 1),
            blurStyle: BlurStyle.inner, // Shadow position
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: DropdownButton(
          icon: SvgPicture.asset(
            SvgIcon.selectedimage,
            height: 40,
            width: 40,
          ),
          elevation: 0,
          dropdownColor: Colors.white.withOpacity(0.9),
          isExpanded: true,
          underline: SizedBox(),
          iconSize: 30,
          style: TextStyle(
            color: Appcolors.normalfontcolor,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
          value: value,
          items: items,
          onChanged: onChanged,
        ),
      ),
    );
  }
}
