import 'package:finflux/core/constants/constants.dart';
import 'package:finflux/core/widgets/custom_rich_text.dart';
import 'package:finflux/core/widgets/paymentcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ScehulePayments extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  const ScehulePayments({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 15.h),
      child: Column(
        spacing: 8.h,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppStrings.scedulePayment, style: AppStyle.heading),
          Paymentcard(data:data,)
          // ListView.separated(
          //   separatorBuilder: (context, index) => SizedBox(height: 10.h),
          //   shrinkWrap: true,
          //   physics: NeverScrollableScrollPhysics(),
          //   itemCount: data.length,
          //   itemBuilder: (context, index) {
          //     return Card(
          //       shadowColor: AppColor.buttonText.withValues(alpha: 0.3),
          //       elevation: 4,
          //       child: Container(
          //         width: double.infinity,
          //         height: 80,
          //         decoration: BoxDecoration(
          //           borderRadius: BorderRadius.circular(5),
          //         ),
          //         child: Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Row(
          //             spacing: 10,
          //             children: [
          //               Image.asset(data[index]["image"]),
          //               Column(
          //                 spacing: 12,
          //                 crossAxisAlignment: CrossAxisAlignment.start,
          //                 children: [
          //                   Text(
          //                     data[index]['title'],
          //                     style: AppStyle.subHeading,
          //                   ),
          //                   CustomRichText(
          //                     highlightedStyle: TextStyle(
          //                       color: AppColor.colorprimary,
          //                       fontWeight: FontWeight.bold,
          //                     ),
          //                     normalStyle: GoogleFonts.montserrat(
          //                       fontWeight: FontWeight.bold,
          //                       color: AppColor.textgrey,
          //                     ),
          //                     normalText: 'nextpayment: ',
          //                     highlightedText: '14/04',
          //                   ),
          //                 ],
          //               ),
          //               Spacer(),
          //               CustomRichText(
          //                 normalStyle: GoogleFonts.montserrat(
          //                   color: AppColor.splashRoundOne,
          //                   fontWeight: FontWeight.bold,
          //                   fontSize: 20,
          //                 ),
          //                 highlightedStyle: GoogleFonts.montserrat(
          //                   color: AppColor.splashRoundOne,
          //                   fontWeight: FontWeight.bold,
          //                   fontSize: 10,
          //                 ),
          //                 normalText: '\$350',
          //                 highlightedText: ' INR',
          //               ),
          //             ],
          //           ),
          //         ),
          //       ),
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
