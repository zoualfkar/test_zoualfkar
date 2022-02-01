import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zoualfkar/constant/constants.dart';
import 'package:zoualfkar/widget/preloaders.dart';

class AppGetUtils {
  static bool isPreloading = false;

  static bool get isSnackbarOpened => _oldSnackStatus != SnackbarStatus.OPEN;
  static SnackbarStatus? _oldSnackStatus;



  static void showEnfo(String errors, {
    String title = 'Info:',
  }) {
    Get.snackbar(
      title,
      errors,
      colorText: Colors.white,
      backgroundColor: kSecondaryColor,
      icon: Icon(Icons.error, color: Colors.white),
      animationDuration: 0.45.seconds,
      forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
      reverseAnimationCurve: Curves.easeOutExpo,
      overlayColor: Colors.white54,
      margin: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      snackStyle: SnackStyle.GROUNDED,
      duration: Duration(seconds: 5),
      snackPosition: SnackPosition.BOTTOM,
    );
 }

  static void showError(String errors, {
    String title = 'Error:',
  }) {
    Get.snackbar(
      title,
      errors,
      colorText: Colors.white,
      backgroundColor: Colors.red.shade800,
      icon: Icon(Icons.error, color: Colors.white),
      animationDuration: 0.45.seconds,
      forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
     reverseAnimationCurve: Curves.easeOutExpo,
     overlayColor: Colors.white54,
      margin: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      snackStyle: SnackStyle.FLOATING,
      duration: Duration(seconds: 10),

      snackPosition: SnackPosition.BOTTOM,
    );

   }

  static void showSuccess(String? message, {
    String? title='Success',
    SnackbarStatusCallback? onStatus,
  }) {

    Get.snackbar(
      title!,
      message!,
      colorText: Colors.white,
      borderRadius: 0,
      backgroundColor: Colors.green.shade800,
      icon: Icon(Icons.check, color: Colors.white),
      snackbarStatus: (status) {
        _oldSnackStatus = status;
        onStatus?.call(status);
      },
      animationDuration: 0.3.seconds,
      forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
      reverseAnimationCurve: Curves.easeOutExpo,
      shouldIconPulse: false,
      margin: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      overlayColor: Colors.white54,
      snackStyle: SnackStyle.FLOATING,
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}