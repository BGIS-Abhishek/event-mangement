import 'package:flutter/material.dart';
import 'package:winter_event/util/screen_util/screen_util.dart';
import 'package:winter_event/widget/sized_box/sized_box.dart';
import '../core/themes/app_color.dart';
import '../core/themes/app_theme.dart';

class DashboardCard extends StatelessWidget {
  final icons;
  final title;
  final VoidCallback ? onTap;
  const DashboardCard({this.icons,this.title,this.onTap,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 160.w,
        height: 130.h,
        margin: EdgeInsets.symmetric(
            horizontal: 3.w),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColor.white,
          boxShadow: [
            BoxShadow(
              color: Colors.green[400]!,
              spreadRadius: 1,
              blurRadius: 2,
            )
          ],
          border: Border.all(color: AppColor.themeColor, width: 0.2),
        ),
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.w),
        child:  Center(
          child: Column(
            children: [
              Image.asset(
                icons,
                height: 70,
                width: 80,
              ),
              Sized_8H(),
              Text(
                title,
                style: AppTheme.headingStyle.copyWith(
                    fontSize: 14.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
