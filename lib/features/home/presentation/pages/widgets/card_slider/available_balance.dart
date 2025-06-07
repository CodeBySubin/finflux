import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../../core/constants/constants.dart';

class AvailableBalance extends StatelessWidget {
  const AvailableBalance({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Available Balance", style: TextStyle(color: AppColor.white)),
        RichText(
          text: TextSpan(
            text: '\$4,228.',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: 29.sp,
                fontWeight: FontWeight.w500,
                color: AppColor.white,
              ),
            ),
            children: [
              TextSpan(
                text: "76",
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(fontSize: 22.sp, color: AppColor.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
