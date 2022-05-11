// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:seepups/utils/su_colors.dart';

class SuWButton extends StatelessWidget {
  final String? title;
  final Function() onPressed;
  const SuWButton({
    Key? key,
    this.title,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 54,
        width: MediaQuery.of(context).size.width,
        child: OutlinedButton(
          onPressed: onPressed,
          child: Text(
            title!,
            style: TextStyle(
              color: Appcolors.pirimaryColor,
              fontSize: 18,
              letterSpacing: 0.5,
              fontWeight: FontWeight.w400,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.white,
            ),
            side: MaterialStateProperty.all(
              BorderSide(width: 1.5, color: Appcolors.buttonColor),
            ),
          ),
        ),
      ),
    );
  }
}
