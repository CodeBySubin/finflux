import 'package:finflux/features/home/presentation/pages/widgets/services/service_dummy_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core/constants/constants.dart';
import '../../../../../../core/widgets/widgets.dart';

class HomeServices extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  const HomeServices({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 18.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppStrings.services, style: AppStyle.heading),
          HorizontalListview(
            sepration: 14,
            data: serviceData,
            length: data.length,
            height: 130.h,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                spacing: 5.h,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 219, 225, 232),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 25),
                      child: SvgPicture.asset(data[index]['Icon']),
                    ),
                  ),
                  Text(data[index]['title'], style: AppStyle.subHeading),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
