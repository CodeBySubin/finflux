import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardNumber extends StatelessWidget {
  const CardNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: List.generate(3, (groupIndex) {
            return Row(
              children: List.generate(4, (dotIndex) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Container(
                    width: 5.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                );
              })..add(SizedBox(width: 12.w)),
            );
          }),
        ),
        Text(
          '8635',
          style: TextStyle(
            fontSize: 22.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2,
          ),
        ),
      ],
    );
  }
}
