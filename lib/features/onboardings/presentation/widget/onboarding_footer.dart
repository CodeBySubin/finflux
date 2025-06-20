import 'package:finflux/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widgets.dart';

class OnboardingFooter extends StatelessWidget {
  final int pageLength;
  final int currentIndex;
  const OnboardingFooter({
    super.key,
    required this.pageLength,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.w, right: 12.w, bottom: 30.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         
          Indicator(
            currentIndex: currentIndex,
            pageLength: pageLength,
           activeColor: AppColor.white,
        color: AppColor.dotindicatorColor,
             activeSize: Size(58.0, 6.0),
            size: Size(20.0, 5.0),
          ),
          textButton(
            color: AppColor.splashRoundOne,
            size: Size(101.w, 55.h),
            onPressed: () {
              context.go(AppRoutes.login);
            },
            text: AppStrings.skip,
          ),
        ],
      ),
    );
  }
}
