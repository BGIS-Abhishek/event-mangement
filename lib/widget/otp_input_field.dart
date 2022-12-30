import 'package:flutter/material.dart';
import 'package:winter_event/util/screen_util/screen_util.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../core/themes/app_color.dart';
import '../core/themes/app_theme.dart';


class OtpInputField extends StatelessWidget {
  final _otpController=TextEditingController();
  late final String ?  _smsCode;

  // const OtpInputField({
  //   Key ? key,
  //   @required this.control,
  // })  : assert(control != null, 'Controller must not be null'),
  //       super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      // width: 283.w,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(4.0),
            decoration: BoxDecoration(
              color: AppColor.inputTextFieldColor,
              borderRadius: BorderRadius.circular(6.r),
            ),
          ),
          Positioned(
            top: 6.h,
            left: 8.w,
            child: Text(
              'OTP',
              style: TextStyle(
                fontSize: 11.sp,
                color: AppColor.labelHintTextColor,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              width: 283.w,
              child: PinCodeTextField(
                hintCharacter: '0',
                controller: _otpController,
                keyboardType: TextInputType.number,
                pinTheme: PinTheme(
                  activeColor: Colors.grey,
                  inactiveColor: Colors.grey,
                  selectedColor: Colors.green,
                ),
                cursorColor: Colors.black,
                appContext: context,
                length: 6,
                textStyle: AppTheme.regularPrimary.copyWith(fontSize: 26),
                hintStyle: AppTheme.regularPrimary.copyWith(fontSize: 26, color: AppColor.pinInputUnfocusedColor),
                animationType: AnimationType.fade,
                animationDuration: const Duration(milliseconds: 300),

                onChanged: (value) {
                  _smsCode=value;
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
