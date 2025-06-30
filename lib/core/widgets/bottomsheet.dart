import 'package:finflux/core/constants/constants.dart';
import 'package:finflux/core/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

displayBottomSheet({required BuildContext context, required Widget widget}) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return widget;
    },
  );
}

class IconBottomSheet extends StatelessWidget {
  final String icon;
  final String amount;
  final String title;

  const IconBottomSheet({
    super.key,
    required this.icon,
    required this.amount,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440.h,
      width: double.infinity,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.r)),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Positioned(
            top: -40.h,
            child: Image.asset(
              icon,
              width: 80.w,
              height: 80.h,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 70.h, bottom: 10.h),
            child: Column(
              spacing: 10,
              children: [
                Text(title, style: AppStyle.largeTextBlack),
                Text('POS Signature Purchase', style: AppStyle.smallTextgrey),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.quickActionGreen.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.w,
                      vertical: 7.h,
                    ),
                    child: Text(
                      "Transactions Status: Posted",
                      style: AppStyle.smallTextgreen,
                    ),
                  ),
                ),
                CustomRichText(
                  normalStyle: AppStyle.largeBoldTextBlack,
                  highlightedStyle: AppStyle.mediumTextgrey,
                  normalText: "\$$amount",
                  highlightedText: "USD",
                ),
                Spacer(),
                infoRow(
                  label: "Transaction ID",
                  value: "556481",
                  divider: true,
                ),
                infoRow(label: "Posted Date", value: "Jul 04, 2021"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget infoRow({
  required String label,
  required String value,
  bool divider = false,
}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.w),
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(label, style: AppStyle.smallTextgrey),
              Text(value, style: AppStyle.smallTextBlack),
            ],
          ),
        ),
        if (divider) Divider(),
      ],
    ),
  );
}
