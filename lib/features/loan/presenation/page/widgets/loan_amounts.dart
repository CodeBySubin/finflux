import 'package:finflux/core/constants/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoanAmounts extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  const LoanAmounts({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 30.h),
      child: Row(
        children:
            data
                .map(
                  (e) => _amountsWidget(
                    amount: e['amount'],
                    color: e['color'],
                    title: e['title'],
                  ),
                )
                .toList(),
      ),
    );
  }
}

Widget _amountsWidget({
  required String amount,
  required Color color,
  required String title,
}) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        child: Column(
          spacing: 5.h,
          children: [
            Text(title, style: AppStyle.smallTextBlack),
            Text(
              "\$$amount",
              style: AppStyle.smallTextgreen.copyWith(color: color),
            ),
          ],
        ),
      ),
    ),
  );
}
