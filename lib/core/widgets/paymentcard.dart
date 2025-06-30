import 'package:finflux/core/widgets/custom_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/constants.dart';

class Paymentcard extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  final void Function(Map<String, dynamic>)? ontap;
  const Paymentcard({super.key, required this.data, this.ontap});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(height: 10.h),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: data.length,
      itemBuilder: (context, index) {
        return ontap != null
            ? GestureDetector(
              onTap: () => ontap!(data[index]),
              child: cardPaymentItem(data: data, index: index),
            )
            : cardPaymentItem(data: data, index: index);
      },
    );
  }
}

Widget cardPaymentItem({
  required List<Map<String, dynamic>> data,
  required int index,
  void Function()? onPressed,
  String? buttonTitle,
  bool showButton = false,
}) {
  return Card(
    shadowColor: AppColor.buttonText.withValues(alpha: 0.3),
    elevation: 4,
    child: Container(
      width: double.infinity,
      height: 90.h,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          spacing: 10.w,
          children: [
            Image.asset(data[index]["image"]),
            Column(
              spacing: 8.h,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(data[index]['title'], style: AppStyle.smallTextBlack),
                CustomRichText(
                  highlightedStyle: AppStyle.normalPrimaryText,
                  normalStyle: AppStyle.smallTextgrey,
                  normalText: 'nextpayment: ',
                  highlightedText: '14/04',
                ),
              ],
            ),
            Spacer(),
            showButton
                ? ElevatedButton(
                  onPressed: onPressed,
                  child: Text(buttonTitle!),
                )
                : CustomRichText(
                  normalStyle: AppStyle.mediumTextBlack,
                  highlightedStyle: AppStyle.smallTextBlack,
                  normalText: '\$350',
                  highlightedText: ' INR',
                ),
          ],
        ),
      ),
    ),
  );
}
