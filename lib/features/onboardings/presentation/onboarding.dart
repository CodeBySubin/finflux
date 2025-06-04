import 'package:finflux/core/constants/constants.dart';
import 'package:finflux/features/onboardings/presentation/widget/onboarding_footer.dart';
import 'package:finflux/features/onboardings/presentation/widget/onboarding_items.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class Onboardings extends StatelessWidget {
  const Onboardings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.splashBackground,
      body: Onboarding(
        swipeableBody: [
          Boardings(
            title: AppStrings.onboardingTitleOne,
            subTitle: AppStrings.onboardingSubtleOne,
            bottomImage: AppImage.secondGrey,
            topImage: AppImage.secondBlue,
            centerImage: AppImage.darkAtmCard,
          ),
          Boardings(
            title: AppStrings.onboardingTitleTwo,
            subTitle: AppStrings.onboardingSubtleTwo,
            bottomImage: AppImage.blueAtmCard,
            topImage: AppImage.greyAtmCard,
            centerImage: AppImage.darkAtmCard,
          ),
        ],
        buildFooter:
            (
              context,
              netDragDistance,
              pagesLength,
              currentIndex,
              setIndex,
              slideDirection,
            ) => OnboardingFooter(
              pageLength: pagesLength,
              currentIndex: currentIndex,
            ),
      ),
    );
  }
}
