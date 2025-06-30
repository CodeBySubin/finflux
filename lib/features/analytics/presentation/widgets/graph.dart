import 'package:finflux/core/constants/app_color.dart';
import 'package:finflux/core/constants/app_style.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnlyticsGraph extends StatelessWidget {
  const AnlyticsGraph({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0.r),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: 1200.w,
          height: 320.h,
          child: LineChart(
            LineChartData(
              minY: 2800,
              maxY: 5200,
              gridData: FlGridData(
                show: true,
                drawHorizontalLine: false,
                horizontalInterval: 500,
                getDrawingHorizontalLine:
                    (value) => FlLine(
                      color: Colors.grey.withValues(alpha: 0.2),
                      strokeWidth: 1,
                    ),
                drawVerticalLine: false,
              ),
              borderData: FlBorderData(show: false),
              lineBarsData: [
                LineChartBarData(
                  color: AppColor.colorprimary,
                  isCurved: true,
                  barWidth: 4,
                  spots: const [
                    FlSpot(1, 3200),
                    FlSpot(2, 3120),
                    FlSpot(3, 4900),
                    FlSpot(4, 3600),
                    FlSpot(5, 3300),
                    FlSpot(6, 4000),
                    FlSpot(7, 3700),
                    FlSpot(8, 4100),
                    FlSpot(9, 3900),
                    FlSpot(10, 4300),
                    FlSpot(11, 4500),
                    FlSpot(12, 4700),
                  ],
                  belowBarData: BarAreaData(
                    show: true,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        AppColor.colorprimary.withValues(alpha: 0.3),
                        AppColor.white.withValues(alpha: 0.5),
                      ],
                    ),
                    spotsLine: BarAreaSpotsLine(
                      show: true,
                      flLineStyle: FlLine(
                        color: AppColor.buttonText,
                        strokeWidth: 1,
                        dashArray: [4, 4],
                      ),
                    ),
                  ),
                  dotData: FlDotData(show: false),
                ),
              ],
              titlesData: FlTitlesData(
                topTitles: AxisTitles(
                  sideTitles: SideTitles(showTitles: false),
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 10,
                    interval: 500,
                    getTitlesWidget: (value, meta) => Text(""),
                  ),
                ),
                leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    reservedSize: 10,
                    interval: 500,
                    getTitlesWidget: (value, meta) => Text(""),
                  ),
                ),
                
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    interval: 1,
                    reservedSize: 36,
                    getTitlesWidget: (value, meta) {
                      const months = [
                        '',
                        'Jan',
                        'Feb',
                        'Mar',
                        'Apr',
                        'May',
                        'Jun',
                        'Jul',
                        'Aug',
                        'Sep',
                        'Oct',
                        'Nov',
                        'Dec',
                      ];
                      if (value >= 1 && value <= 12) {
                        return Text(months[value.toInt()],style: AppStyle.smallTextgrey,);
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
                  ),
                ),
              ),
              lineTouchData: LineTouchData(
                touchTooltipData: LineTouchTooltipData(
                  tooltipMargin: 20.h,
                  tooltipPadding: EdgeInsets.all(5),
                  getTooltipColor: (spot) => AppColor.colorprimary,
                  tooltipBorderRadius: BorderRadius.circular(10),
                  getTooltipItems:
                      (spots) => [
                        LineTooltipItem(
                          "\$${spots.first.y.toInt()}",
                          const TextStyle(color: Colors.white),
                        ),
                      ],
                ),
                getTouchedSpotIndicator: (
                  LineChartBarData barData,
                  List<int> spotIndexes,
                ) {
                  return spotIndexes.map((index) {
                    return TouchedSpotIndicatorData(
                      FlLine(color: AppColor.colorprimary, strokeWidth: 2),
                      FlDotData(
                        show: true,
                        getDotPainter: (spot, percent, barData, index) {
                          return FlDotCirclePainter(
                            radius: 6,
                            color: Colors.white,
                            strokeColor: AppColor.colorprimary,
                            strokeWidth: 5,
                          );
                        },
                      ),
                    );
                  }).toList();
                },
                handleBuiltInTouches: true,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
