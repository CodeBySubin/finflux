import 'package:finflux/core/constants/app_strings.dart';
import 'package:finflux/core/constants/app_style.dart';
import 'package:finflux/features/analytics/presentation/widgets/graph.dart';
import 'package:finflux/features/analytics/presentation/widgets/last_thirty_day.dart';
import 'package:finflux/features/analytics/presentation/widgets/recent_transaction.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/widgets/widgets.dart';

class Analytics extends StatefulWidget {
  const Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              AppStrings.availableBalance,
              style: AppStyle.caption.copyWith(fontSize: 12),
            ),
            CustomRichText(
              normalStyle: GoogleFonts.montserrat(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25.sp,
              ),
              highlightedStyle: GoogleFonts.montserrat(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15.sp,
              ),
              normalText: "\$4,228.",
              highlightedText: "76",
            ),
            AnlyticsGraph(),
            LastThirtyDay(),
            RecentTransaction(),
          ],
        ),
      ),
    );
  }
}
