import 'package:finflux/core/constants/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class CardValidateItem extends StatelessWidget {
  final String title;
  final String date;
  const CardValidateItem({super.key, required this.title, required this.date});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: title,
        style: GoogleFonts.montserrat(
          textStyle: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: AppColor.white,
          ),
        ),
        children: [
          TextSpan(
            text: " $date",
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: AppColor.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
