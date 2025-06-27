import 'package:finflux/core/constants/constants.dart';
import 'package:finflux/core/widgets/paymentcard.dart';
import 'package:finflux/dummy_data/analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecentTransaction extends StatelessWidget {
  const RecentTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
      child: Column(
        spacing: 10.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppStrings.recentTransaction, style: AppStyle.smallBoldTitle),
          Paymentcard(data: analytics),
        ],
      ),
    );
  }
}
