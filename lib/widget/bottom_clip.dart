import 'package:flutter/material.dart';
import 'package:winter_event/util/screen_util/screen_util.dart';
import '../core/themes/app_color.dart';
import '../core/themes/app_theme.dart';

class BottomChip extends StatelessWidget {
  final title;
  final value;
  final width;
  final height;
  const BottomChip({
    Key ? key,
    this.title,
    this.value,
    this.width,
    this.height
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.symmetric(vertical: 8.r, horizontal: 16.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6.r),
        color: AppColor.headingTextColor.withOpacity(0.07),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title,
            style: AppTheme.bodyTextLight,
          ),
          Text(
            value,
            style: AppTheme.headingStyle.copyWith(color: AppColor.themeColor),
          ),
        ],
      ),
    );
  }
}