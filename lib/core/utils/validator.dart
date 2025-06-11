import 'package:finflux/core/utils/toast_helper.dart';
import 'package:flutter/material.dart';

class Validator {
  static String? validatePhoneNumber(String value) {
    if (value.isEmpty) return 'Phone number is required';
    if (!RegExp(r'^\+?[0-9]{10,13}$').hasMatch(value)) {
      return 'Enter a valid phone number';
    }
    return null;
  }

  static String? validatePassword(String value) {
    if (value.isEmpty) return 'password is required';
    if (value.length != 6) return 'passowrd must be 6 digits';
    return null;
  }

static bool validateOtp(String value) {
  if (value.isEmpty) {
    showToast("Please enter OTP");
    return false;
  } else if (value.length < 6) {
    showToast("OTP must be at least 6 digits");
    return false;
  }
  return true;
}


  static bool validate(GlobalKey<FormState> formKey, VoidCallback onSuccess) {
    final isValid = formKey.currentState?.validate() ?? false;
    if (isValid) {
      onSuccess();
    }
    return isValid;
  }
}
