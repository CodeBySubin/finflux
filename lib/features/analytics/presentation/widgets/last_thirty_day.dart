import 'package:finflux/core/constants/constants.dart';
import 'package:finflux/core/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LastThirtyDay extends StatelessWidget {
  const LastThirtyDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      child: Column(
        spacing: 18.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppStrings.lastThirtyDAy, style: AppStyle.smallBoldTitle),
          Row(
            spacing: 10.w,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MoneyInAndOut(
                title: AppStrings.moneyIn,
                color: AppColor.quickActionGreen,
                icon: AppIcons.moneyDownIcon,
              ),
              MoneyInAndOut(
                icon: AppIcons.moneyUpIcon,
                color: AppColor.moneyRed,
                title: AppStrings.moneyOut,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MoneyInAndOut extends StatelessWidget {
  final String title;
  final Color color;
  final String icon;
  const MoneyInAndOut({
    super.key,
    required this.color,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 15.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                spacing: 4.h,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(color: color, fontWeight: FontWeight.bold),
                  ),
                  CustomRichText(
                    normalText: "\$126.06",
                    normalStyle: GoogleFonts.montserrat(
                      color: color,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    highlightedText: " USD",
                    highlightedStyle: GoogleFonts.montserrat(
                      color: color,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: AppColor.white.withValues(alpha: 0.3),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0.r),
                  child: SvgPicture.asset(icon),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
