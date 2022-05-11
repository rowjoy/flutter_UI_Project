// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:seepups/utils/su_colors.dart';

class SuGButton extends StatelessWidget {
  final String? title;
  final Function() onPressed;
  const SuGButton({
    Key? key,
    this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Material(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
        child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Appcolors.buttonColor,
            borderRadius: BorderRadius.circular(2),
            // ignore: prefer_const_literals_to_create_immutables
            boxShadow: [
              BoxShadow(
                spreadRadius: 4,
                color: Appcolors.buttonColor.withOpacity(0.4),
                blurRadius: 0.5,
                offset: Offset(0.5, 0.5), // Shadow position
              ),
            ],
          ),
          child: Center(
            child: Text(
              title!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
