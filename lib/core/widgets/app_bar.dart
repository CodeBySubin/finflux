import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/constants.dart';


  PreferredSizeWidget customAppbar(BuildContext context,) {
    return AppBar(
      centerTitle: true,
      title: Text(
        AppStrings.appTitle,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      leading: Row(
        children: [
          Spacer(),
          Stack(
            children: [
             CircleAvatar(
              backgroundImage: AssetImage(AppImage.person),
          
             ),
              Positioned(
                top: -2,
                right: -2,
                child: Container(
                  width: 10.h,
                  height: 10.w,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(
              AppColor.lightGrey.withValues(alpha: 0.2),
            ),
            shape: WidgetStateProperty.all<OutlinedBorder>(
              const CircleBorder(),
            ),
          ),
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.bellIcon),
        ),
      ],
    );
  }

