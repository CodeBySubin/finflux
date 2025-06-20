import 'package:finflux/core/constants/app_color.dart';
import 'package:flutter/material.dart';

Future<T?> otpLoader<T>(BuildContext context) {
  return showDialog<T>(
    context: context,
    barrierDismissible: false,
    builder: (_) => const Center(
      child: CircularProgressIndicator(
        color: AppColor.white,
      ),
    ),
  );
}
