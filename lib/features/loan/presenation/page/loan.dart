import 'package:finflux/core/constants/constants.dart';
import 'package:finflux/core/enums/app_bar_type.dart';
import 'package:finflux/core/widgets/widgets.dart';
import 'package:finflux/features/loan/presenation/page/widgets/dummy_data.dart';
import 'package:finflux/features/loan/presenation/page/widgets/loan_amounts.dart';
import 'package:finflux/features/loan/presenation/page/widgets/pie_graph.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Loan extends StatefulWidget {
  const Loan({super.key});

  @override
  State<Loan> createState() => _LoanState();
}

class _LoanState extends State<Loan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(
        context,
        title: AppStrings.loan,
        leadingType: AppBarType.arrowBack,
      ),

      body: Center(
        child: Column(
          children: [
            Text("Car Loan"),
            CustomRichText(normalText: "\$2556", highlightedText: "50"),
            PieGraph(),
            LoanAmounts(data: amountsData),
          ],
        ),
      ),
    );
  }
}
