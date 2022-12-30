import 'package:flutter/material.dart';

import 'app_color.dart';


/*
Regular 400
Light 300
Medium 500 
SemiBold 600
Bold 700
*/
class AppTheme {
  static final TextStyle headingStyle = TextStyle(
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: AppColor.headingTextColor,
  );
  static final TextStyle highLightStyle = TextStyle(
      fontFamily: 'Quicksand',
      fontWeight: FontWeight.w500,
      fontSize: 21,
      color: AppColor.themeColor);

  static const TextStyle bodyTextLight = TextStyle(
    color: AppColor.titleTextColor,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w500,
    fontSize: 16,
  );
  static const TextStyle hintTextStyle = TextStyle(
    color: Colors.grey,
    fontSize: 14.0,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w400,
  );

  static const TextStyle buttonTextStyle = TextStyle(
    color: AppColor.white,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w700,
    fontSize: 19,
  );

  static final TextStyle notificationItemTextStyle = TextStyle(
    color: AppColor.headingTextColor,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w500,
    fontSize: 13,
  );

  static const TextStyle appBarTitleTextStyle = TextStyle(
    color: AppColor.appBarTitleTextColor,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  static const TextStyle hugeTitleTextStyle = TextStyle(
    color: AppColor.white,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w500,
    fontSize: 29,
  );
  static final TextStyle tankCardTitleTextStyle = TextStyle(
    color: AppColor.headingTextColor,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w500,
    fontSize: 18,
  );
  static final TextStyle quicksandBoldTextStyle = TextStyle(
    color: AppColor.themeColor,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w600,
    fontSize: 15,
  );

  static const TextStyle regularPrimary = TextStyle(
    color: Colors.white,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w600,
    fontSize: 15,
  );

  static const TextStyle regularPrimary2 = TextStyle(
    color: Colors.black,
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w600,
    fontSize: 15,
  );

  static const TextStyle regularPrimary1 = TextStyle(
    color: Color(0xff13a9e7),
    fontFamily: 'Quicksand',
    fontWeight: FontWeight.w600,
    fontSize: 16,
  );
}
