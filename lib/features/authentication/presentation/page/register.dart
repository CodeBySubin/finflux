import 'package:finflux/core/routes/app_routes.dart';
import 'package:finflux/core/widgets/text_field.dart';
import 'package:finflux/features/authentication/presentation/page/widgets/auth_background.dart';
import 'package:finflux/features/authentication/presentation/page/widgets/finger_print_button.dart';
import 'package:finflux/features/authentication/presentation/page/widgets/have_account_button.dart';
import 'package:finflux/features/authentication/presentation/page/widgets/terms_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widgets.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthBackground(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20.h,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              AppStrings.createYourAccount,
              style: TextStyle(color: AppColor.white, fontSize: 28.sp),
            ),
            TextFieldWidget(hintText: AppStrings.name),
            TextFieldWidget(hintText: AppStrings.email),
            TextFieldWidget(hintText: AppStrings.mobileNumber),
            TextFieldWidget(hintText: AppStrings.cnic),
            Row(
              spacing: 10,
              children: [
                Expanded(
                  child: TextFieldWidget(
                    hintText: AppStrings.password,
                    suffixIcon: Icon(Icons.visibility_off_outlined),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: fingerPrintButton(
                      onTap: () {
                        context.push(AppRoutes.fingerPrint);
                      },
                    ),
                  ),
                ),
              ],
            ),
            termAndCondition(),
            textButton(
              text: AppStrings.login,
              onPressed: () {},
              size: Size(double.infinity, 67.h),
            ),
            haveAcoountButton(
              onTap: () => context.go(AppRoutes.register),
              account: AppStrings.signUp,
              title: AppStrings.donthaveAccount,
            ),
          ],
        ),
      ),
    );
  }
}
