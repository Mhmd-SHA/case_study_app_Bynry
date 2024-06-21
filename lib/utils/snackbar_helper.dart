import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../const/app_colors.dart';

class SnackbarHelper {
  static showSuccessSnackBar({required String title, required String message}) {
    Get.closeCurrentSnackbar();
    Get.snackbar(
      title,
      message,
      animationDuration: Durations.long1,
      duration: Duration(seconds: 3),
      // overlayBlur: 5,
      colorText: AppColors.white,
      backgroundColor: AppColors.primaryColor,
      barBlur: 100,
      overlayBlur: 1,
    );
  }

  static showFailureSnackBar({required String title, required String message}) {
    Get.closeCurrentSnackbar();
    Get.snackbar(
      title, message,
      animationDuration: Durations.long1,
      duration: Duration(seconds: 3),
      // overlayBlur: 5,
      colorText: AppColors.white,
      backgroundColor: AppColors.secondaryColor.withOpacity(0.7), barBlur: 100,
    );
  }
}
