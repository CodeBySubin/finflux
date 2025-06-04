import 'package:finflux/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/constants.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _navigate();
    super.initState();
  }

  Future<void> _navigate() async {
    await Future.delayed(const Duration(seconds: 3));
    if (!mounted) return;
    context.go(AppRoutes.onboarding);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.splashBackground,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            width: 1.6.sw,
            height: 1.1.sh,
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.splashRoundThree.withAlpha(25),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            width: 1.1.sw,
            height: 1.5.sh,
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.splashRoundOne.withAlpha(25),
                shape: BoxShape.circle,
              ),
            ),
          ),
          Positioned(
            width: 0.7.sw,
            height: 0.7.sh,
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.splashRoundOne.withAlpha(25),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
