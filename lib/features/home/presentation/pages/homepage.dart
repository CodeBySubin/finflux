import 'package:finflux/core/constants/app_image.dart';
import 'package:finflux/features/home/presentation/pages/widgets/card_slider/card_slider.dart';
import 'package:finflux/features/home/presentation/pages/widgets/quick_actions.dart/dummy_data.dart';
import 'package:finflux/features/home/presentation/pages/widgets/quick_actions.dart/quick_action.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardSlider(
              cardImage: [AppImage.masterCard, AppImage.greenMasterCard],
            ),
            QuickAction(data: quickActionData,),
          ],
        ),
      ),
    );
  }
}
