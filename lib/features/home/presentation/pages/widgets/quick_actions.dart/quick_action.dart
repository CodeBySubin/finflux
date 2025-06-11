import 'package:finflux/features/home/presentation/pages/widgets/quick_actions.dart/dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/widgets/widgets.dart';

class QuickAction extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  const QuickAction({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Quick Action"),
          HorizontalListview(
            data: quickActionData,
            length: data.length,
            height: 150.h,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: SizedBox(
                  width: 130,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: (data[index]['color'] as Color).withValues(
                            alpha: 0.2,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SvgPicture.asset(data[index]['Image']),
                        ),
                      ),
                      Text(data[index]['title']),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
