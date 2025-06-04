import 'package:finflux/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final Color fillcolor;
  final bool filled;
  final TextStyle? hintStyle;
  final Widget? suffixIcon;
  const TextFieldWidget({
    super.key,
    required this.hintText,
    this.controller,
    this.fillcolor = AppColor.white,
    this.filled = true,
    this.hintStyle,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        contentPadding: EdgeInsets.symmetric(vertical: 18.w, horizontal: 22.h),
        filled: filled,
        fillColor: fillcolor,
        hintText: hintText,
        hintStyle: hintStyle,
      ),
    );
  }
}
