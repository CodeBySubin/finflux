import 'package:finflux/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Boardings extends StatelessWidget {
  final String title;
  final String subTitle;
  final String bottomImage;
  final String topImage;
  final String centerImage;

  const Boardings({
    super.key,
    required this.title,
    required this.subTitle,
    required this.bottomImage,
    required this.topImage,
    required this.centerImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  bottomImage,
                  width: 180,
                  height: 280,
                  fit: BoxFit.fill,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Image.asset(
                  centerImage,
                  width: 180,
                  height: 280,
                  fit: BoxFit.fill,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  topImage,
                  width: 180,
                  height: 280,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10.w, right: 10.w, bottom: 15.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: AppColor.white,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                AppStrings.mobileBanking,
                style: TextStyle(
                  color: AppColor.colorprimary,
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(subTitle, style: TextStyle(color: AppColor.textgrey)),
            ],
          ),
        ),
      ],
    );
  }
}
