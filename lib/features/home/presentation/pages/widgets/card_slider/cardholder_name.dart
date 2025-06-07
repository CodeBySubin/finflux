import 'package:flutter/material.dart';

import '../../../../../../core/constants/constants.dart';

class CardholderName extends StatelessWidget {
  const CardholderName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Card Holder", style: TextStyle(color: AppColor.white)),
        Text(
          "Will Jonas",
          style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.white),
        ),
      ],
    );
  }
}
