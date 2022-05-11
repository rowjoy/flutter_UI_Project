import 'package:flutter/material.dart';
import 'package:seepups/utils/su_colors.dart';

class LinkUploadfield extends StatelessWidget {
  final dynamic hintext;
  final void Function()? onTap;
  const LinkUploadfield({
    Key? key,
    this.hintext,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            spreadRadius: 1.5,
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            // ignore: prefer_const_constructors
            offset: Offset(1, 1),
            blurStyle: BlurStyle.inner, // Shadow position
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              hintext!,
              style: TextStyle(
                  color: Appcolors.graycolor,
                  fontSize: 15,
                  fontWeight: FontWeight.w100),
            ),
            GestureDetector(
              onTap: onTap,
              child: Icon(
                Icons.add,
                color: Appcolors.pirimaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
