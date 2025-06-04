import 'package:finflux/core/constants/constants.dart';
import 'package:finflux/features/authentication/presentation/page/widgets/auth_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class FingerPrints extends StatelessWidget {
  const FingerPrints({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      body: Padding(
        padding: EdgeInsets.only(top: 180.h, bottom: 80.h),
        child: Column(
          children: [
            Text(
              AppStrings.fingerprint,
              style: TextStyle(
                color: AppColor.white,
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              AppStrings.fingerPrintNote,
              style: TextStyle(color: AppColor.white, fontSize: 17.sp),
            ),
            Spacer(),
            SvgPicture.asset(AppIcons.fingerPrint),
          ],
        ),
      ),
    );
  }
}
