import 'package:finflux/features/home/presentation/pages/widgets/card_slider/available_balance.dart';
import 'package:finflux/features/home/presentation/pages/widgets/card_slider/card_number.dart';
import 'package:finflux/features/home/presentation/pages/widgets/card_slider/card_validate.dart';
import 'package:finflux/features/home/presentation/pages/widgets/card_slider/cardholder_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CardSliderItem extends StatelessWidget {
  final String image;
  const CardSliderItem({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(image),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 40.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AvailableBalance(),
                  CardNumber(),
                  CardValidate(),
                  Spacer(),
                  CardholderName(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
