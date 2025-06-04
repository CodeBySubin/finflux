import 'package:finflux/core/constants/app_color.dart';
import 'package:finflux/core/constants/constants.dart';
import 'package:finflux/core/widgets/text_button.dart';
import 'package:finflux/core/widgets/text_field.dart';
import 'package:finflux/features/authentication/presentation/page/widgets/auth_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 49.h,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              AppStrings.loginToYourAccount,
              style: TextStyle(color: AppColor.white, fontSize: 33.sp),
            ),
            TextFieldWidget(hintText: AppStrings.userId),
            TextFieldWidget(hintText: AppStrings.password),
            textButton(
              text: AppStrings.login,
              onPressed: () {},
              size: Size(double.infinity, 80.h),
            ),

            Text(
              AppStrings.forgotUser,
              style: TextStyle(color: AppColor.white, fontSize: 17.sp),
            ),

            RichText(
              text: TextSpan(
                text: AppStrings.donthaveAccount,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 17.sp,
                    color: AppColor.textgrey,
                  ),
                ),
                children: [
                  TextSpan(
                    text: AppStrings.signUp,
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 17.sp,
                        color: AppColor.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
