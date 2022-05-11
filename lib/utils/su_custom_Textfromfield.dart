// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seepups/utils/su_colors.dart';

class CustomTextFromField extends StatelessWidget {
  final String? label;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final String? hintText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  const CustomTextFromField({
    Key? key,
    this.label,
    this.controller,
    this.hintText,
    this.inputFormatters,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    required this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              label!,
              style: TextStyle(
                color: Appcolors.normalfontcolor,
                fontSize: 15,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          TextFormField(
            maxLines: 1,
            inputFormatters: inputFormatters,
            controller: controller,
            validator: validator,
            obscureText: obscureText,
            keyboardType: keyboardType,
            decoration: InputDecoration(
              errorStyle: TextStyle(
                fontSize: 11,
                color: Colors.red,
              ),
              hintText: hintText,
              hintStyle: TextStyle(
                color: Appcolors.graycolor,
                fontSize: 15,
              ),
              contentPadding: const EdgeInsets.all(0.5),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.redAccent),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
