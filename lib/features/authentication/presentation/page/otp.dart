import 'package:finflux/core/enums/enums.dart';
import 'package:finflux/core/routes/routes.dart';
import 'package:finflux/core/utils/toast_helper.dart';
import 'package:finflux/core/utils/validator.dart';
import 'package:finflux/features/authentication/domain/entities/auth_user.dart';
import 'package:finflux/features/authentication/presentation/bloc/bloc.dart';
import 'package:finflux/features/authentication/presentation/bloc/event.dart';
import 'package:finflux/features/authentication/presentation/bloc/state.dart';
import 'package:finflux/features/authentication/presentation/page/widgets/otp_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/widgets/widgets.dart';

class Otp extends StatefulWidget {
  final AuthUser user;
  const Otp({super.key, required this.user});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  final TextEditingController controller = TextEditingController();
@override
void initState() {
  super.initState();
  WidgetsBinding.instance.addPostFrameCallback((_) {
    context.read<AuthBloc>().add(AuthEvent.sendOtp(widget.user.mobile));
  });
}


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
                highlightedText: widget.user.mobile,
              ),
              SizedBox(height: 120.h),
              Pinput(
                length: 6,
                controller: controller,
                // obscuringCharacter: "*",
                // obscureText: true,
                defaultPinTheme: PinTheme(
                  width: 54.w,
                  height: 66.h,
                  textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                  decoration: BoxDecoration(
                    color: AppColor.buttonText,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                focusedPinTheme: PinTheme(
                  width: 54.w,
                  height: 66.h,
                  textStyle: const TextStyle(fontSize: 20, color: Colors.black),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                autofillHints: const [AutofillHints.oneTimeCode],
                onCompleted:
                    (pin) => context.read<AuthBloc>().add(
                      AuthEvent.verifyOtp(controller.text, widget.user.mobile),
                    ),
              ),
              Spacer(),
              Text(AppStrings.dontReceiveAnOtp),
              Text(
                AppStrings.resendOtp,
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 20.h),
              BlocListener<AuthBloc, AuthState>(
                listener: (context, state) {
                  state.whenOrNull(
                    loading: () => otpLoader(context),
                    success: () => context.go(AppRoutes.home),
                    otpsend:()=> showToast("Otp send to your device"),
                    failure: (error) {
                      context.pop();
                      showToast(error);
                    },
                  );
                },
                child: textButton(
                  text: AppStrings.next,
                  onPressed: () {
                    if (Validator.validateOtp(controller.text)) {
                      context.read<AuthBloc>().add(
                        AuthEvent.verifyOtp(
                          controller.text,
                          widget.user.mobile,
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


