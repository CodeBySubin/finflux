import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/constants/constants.dart';

Widget termAndCondition() {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Checkbox(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        activeColor: AppColor.colorprimary,
        value: true,
        onChanged: (value) {},
      ),
      RichText(
        text: TextSpan(
          text: AppStrings.iAgreeWith,
          style: GoogleFonts.montserrat(
            textStyle: TextStyle(fontSize: 17.sp, color: AppColor.white),
          ),
          children: [
            TextSpan(
              text: AppStrings.termsAndConditions,
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(fontSize: 17.sp, color: AppColor.colorprimary),
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
