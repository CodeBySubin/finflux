import 'package:finflux/features/home/presentation/pages/widgets/card_slider/card_validate_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardValidate extends StatelessWidget {
  const CardValidate({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20.w,
      children: [
        CardValidateItem(title: 'Valid From', date: '10/25'),
        CardValidateItem(title: 'Valid Thru', date: '10/30'),
      ],
    );
  }
}
