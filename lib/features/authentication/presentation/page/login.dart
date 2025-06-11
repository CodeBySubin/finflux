import 'package:finflux/core/constants/constants.dart';
import 'package:finflux/core/routes/routes.dart';
import 'package:finflux/core/widgets/text_button.dart';
import 'package:finflux/core/widgets/text_field.dart';
import 'package:finflux/features/authentication/presentation/page/widgets/auth_background.dart';
import 'package:finflux/features/authentication/presentation/page/widgets/finger_print_button.dart';
import 'package:finflux/features/authentication/presentation/page/widgets/have_account_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
    final TextEditingController mobilenumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          spacing: 30.h,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              AppStrings.loginToYourAccount,
              style: TextStyle(color: AppColor.white, fontSize: 28.sp),
            ),
            TextFieldWidget(
              controller: mobilenumber,
              hintText: AppStrings.userId),
            TextFieldWidget(hintText: AppStrings.password),
            textButton(
              text: AppStrings.login,
              onPressed: () {
                context.push(AppRoutes.otp);
              },
              size: Size(double.infinity, 80.h),
            ),
            Text(
              AppStrings.forgotUser,
              style: TextStyle(color: AppColor.white, fontSize: 17.sp),
            ),
            fingerPrintButton(
              onTap: () {
                context.push(AppRoutes.fingerPrint);
              },
            ),
            haveAcoountButton(
              onTap: () => context.pushReplacement(AppRoutes.register),
              account: AppStrings.signUp,
              title: AppStrings.donthaveAccount,
            ),
          ],
        ),
      ),
    );
  }
}
