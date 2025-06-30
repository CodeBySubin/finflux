import 'package:finflux/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static const TextStyle heading = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w900,
  );

  static TextStyle get subHeading =>
      GoogleFonts.montserrat(fontSize: 13.0, fontWeight: FontWeight.w700);

  static const TextStyle body = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    color: Colors.black87,
  );

  static const TextStyle caption = TextStyle(
    fontSize: 10.0,
    fontWeight: FontWeight.w400,
    color: Colors.grey,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  //////////////////primary//////////////////////
  static TextStyle get link => TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    color: AppColor.colorprimary,
    decoration: TextDecoration.underline,
  );

  static TextStyle get normalPrimaryText => GoogleFonts.montserrat(
    color: AppColor.colorprimary,
    fontWeight: FontWeight.bold,
  );

  /////////////////////////Red///////////////////////////

  static TextStyle get errorText => GoogleFonts.montserrat(
    fontSize: 12.0,
    color: Colors.red,
    fontWeight: FontWeight.w600,
  );

  static TextStyle get smallBoldTitle =>
      GoogleFonts.montserrat(fontWeight: FontWeight.w700, fontSize: 15);

  ////////////////////////////////Green///////////////////////////////
  static TextStyle get smallTextgreen => GoogleFonts.montserrat(
    fontWeight: FontWeight.w600,
    color: AppColor.quickActionGreen,
    fontSize: 14.sp,
  );

  /////////////////////////////////Black///////////////////////////////

  static TextStyle get largeTextBlack => GoogleFonts.montserrat(
    fontWeight: FontWeight.w700,
    color: AppColor.black,
    fontSize: 20.sp,
  );

  static TextStyle get largeBoldTextBlack => GoogleFonts.montserrat(
    fontWeight: FontWeight.w600,
    color: AppColor.black,
    fontSize: 30.sp,
  );

  static TextStyle get smallTextBlack => GoogleFonts.montserrat(
    fontWeight: FontWeight.w600,
    color: AppColor.black,
    fontSize: 14.sp,
  );
  static TextStyle get mediumTextBlack => GoogleFonts.montserrat(
    color: AppColor.black,
    fontWeight: FontWeight.bold,
    fontSize: 20.sp,
  );
  /////////////////////////////////grey///////////////////////////////
  static TextStyle get smallTextgrey => GoogleFonts.montserrat(
    fontWeight: FontWeight.w600,
    color: AppColor.textgrey,
    fontSize: 14.sp,
  );

  static TextStyle get mediumTextgrey => GoogleFonts.montserrat(
    fontWeight: FontWeight.w600,
    color: AppColor.textgrey,
    fontSize: 16.sp,
  );
}
