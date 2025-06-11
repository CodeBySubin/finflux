import 'package:finflux/core/enums/enums.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widgets.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: customAppbar(
        title: AppStrings.otpVerification,
        leadingType: AppBarType.arrowBack,
        context,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 70.h, bottom: 30.h),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(width: 148.w, height: 148.h, AppImage.otpImage),
              Text(
                AppStrings.otp,
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30.sp),
              ),

              SizedBox(height: 15.h),

              CustomRichText(
                highlightedStyle: TextStyle(
                  color: AppColor.colorprimary,
                  fontWeight: FontWeight.bold,
                ),
                normalText: AppStrings.pleaseEnterOtp,
                highlightedText: ' +1 123 3698 789',
              ),

              SizedBox(height: 120.h),

              Pinput(
                obscuringCharacter: "*",
                obscureText: true,
                focusedPinTheme: PinTheme(
                  width: 56,
                  height: 56,
                  textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Text(AppStrings.dontReceiveAnOtp),
              Text(AppStrings.resendOtp,style: TextStyle(color: Colors.black),),
              SizedBox(height: 20.h),
              textButton(text: "Next", onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
