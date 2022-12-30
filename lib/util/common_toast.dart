import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../core/themes/app_color.dart';


showNotification(BuildContext context, { required String message, String title= 'Massage'}) {
  Flushbar(
    title: title,
    message: message,
    duration: const Duration(seconds: 2),
    flushbarPosition: FlushbarPosition.TOP,
    margin: const EdgeInsets.symmetric(horizontal: 8),
    borderRadius: BorderRadius.circular(8),
    backgroundColor: AppColor.themeColor,
    blockBackgroundInteraction: false,
    routeColor: Colors.greenAccent,
  ).show(context);
}
