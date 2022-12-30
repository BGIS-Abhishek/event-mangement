import 'package:flutter/material.dart';
import 'package:winter_event/util/screen_util/screen_util.dart';
import '../core/themes/app_theme.dart';


class PrimaryButton extends StatelessWidget {
  final VoidCallback ? onTap;
  final String ? title;
  const PrimaryButton({this.onTap, @required this.title});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          gradient:
              const LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [
                Color(0xFF147DEF),
                Color(0xFF158BD0),
                Color(0xFF1696B7),
                // Color(0xFF19AC89),
                // Color(0xFF23DF27),
          ]),
        ),
        child: Center(
          child: Text(
            title ?? "",
            style: AppTheme.buttonTextStyle,
          ),
        ),
      ),
    );
  }
}
