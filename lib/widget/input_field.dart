import 'package:flutter/material.dart';
import 'package:winter_event/util/screen_util/screen_util.dart';

import '../core/themes/app_color.dart';
import '../core/themes/app_theme.dart';



// ignore: slash_for_doc_comments
/**
 * * custom TextFiel 
 * @param controller : TextFieldController
 * @param labelText : String for Label
 * @param hintText : String for Hint
 * @param prefixText: any String for Prefix
 * @param inputType : inputType default: Text
 * @param suffixIcon: widget for suffix
 * @param isSecret : bool for Secret Text default: false
 */
class InputField extends StatefulWidget {
  final TextEditingController ?controller;
  final String ?labelText;
  final String ?hintText;
  final String ?prefixText;
  final TextInputType inputType;
  final Widget ?suffixIcon;
  final bool isSecret;
  final bool readOnly;
  final int maxLines;
  const InputField({
    @required this.controller,
    @required this.hintText,
    @required this.labelText,
    this.prefixText,
    this.isSecret = false,
    this.readOnly = false,
    this.suffixIcon,
    this.inputType = TextInputType.text,
    this.maxLines=1,
  })  : assert(controller != null, "Controlled can't be null"),
        assert(labelText != null, "LabelText can't be null"),
        assert(hintText != null, "HintText can't be null");

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: AppColor.inputTextFieldColor,
        border: Border.all(color: AppColor.bgComparedShadeColor, width: .2),
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Center(
        child: TextField(
          autocorrect: false,
          maxLines: widget.maxLines,
          readOnly: widget.readOnly,
          obscureText: widget.isSecret,
          obscuringCharacter: '*',
          controller: widget.controller,
          keyboardType: widget.inputType,
          style: AppTheme.bodyTextLight,
          decoration: InputDecoration(
            prefix: widget.prefixText != null
                ? Text(
                    widget.prefixText!,
                    style: AppTheme.bodyTextLight,
                  )
                : null,
            suffixIcon: widget.isSecret == true
                ? const Icon(
                    Icons.lock_outline_rounded,
                    color: AppColor.messageHintTextColor,
                  )
                : widget.suffixIcon,
            hintText: widget.hintText,
            labelText: widget.labelText,
            labelStyle: AppTheme.hintTextStyle,
            hintStyle: AppTheme.bodyTextLight,
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(
              left: 10.r,
              bottom: 10.r,
            ),
          ),
        ),
      ),
    );
  }
}
