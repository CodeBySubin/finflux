import 'package:finflux/core/constants/app_color.dart';
import 'package:finflux/core/constants/app_style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PieGraph extends StatelessWidget {
  const PieGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PieChart(
            PieChartData(
              centerSpaceRadius: 50,
              sectionsSpace: 0,
              startDegreeOffset: -90,
              sections: [
                PieChartSectionData(
                  value: 25,
                  color: AppColor.moneyRed,
                  radius: 20,
                  showTitle: false,
                ),
                PieChartSectionData(
                  value: 25,
                  color: AppColor.quickActionGreen,
                  radius: 20,
                  showTitle: false,
                ),

                PieChartSectionData(
                  value: 50,
                  color: AppColor.colorprimary,
                  radius: 20,
                  showTitle: false,
                ),
              ],
            ),
          ),
          Text("50%", style: AppStyle.mediumTextBlack),
        ],
      ),
    );
  }
}
