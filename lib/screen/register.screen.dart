import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:winter_event/util/screen_util/screen_util.dart';
import 'package:winter_event/widget/common_app_bar.dart';
import 'package:winter_event/widget/sized_box/sized_box.dart';

import '../core/themes/app_color.dart';
import '../core/themes/app_theme.dart';
import '../widget/base_entry/entry_main.dart';
import '../widget/bottom_text_highlight.dart';
import '../widget/input_field.dart';
import '../widget/primary_button.dart';
class RegisterScreen extends StatefulWidget {
  static const String route = '/register';
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController ?
      _firstNameController,
      _lastNameController,
      _phoneController,
      _emailController,
      _passController,
      _rePassController;


  @override
  void initState() {
    // TODO: implement initState

    _firstNameController = TextEditingController();
    _lastNameController = TextEditingController();
    _phoneController = TextEditingController();
    _emailController = TextEditingController();
    _passController = TextEditingController();
    _rePassController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _firstNameController?.dispose();
    _lastNameController?.dispose();
    _phoneController?.dispose();
    _emailController?.dispose();
    _passController?.dispose();
    _rePassController?.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: 'Register',
        actions: [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child:Lottie.asset(
                  'assets/lotties/register.json',
                  animate: true,
                  height: 140.h,
                ),
              ),
              Text(
                'Welcome',
                style: AppTheme.headingStyle,
              ),
              Sized_4H(),
              SizedBox(
                width: 100.w,
                child: Divider(
                  height: 0,
                  thickness: 2.r,
                  color: AppColor.themeColor,
                ),
              ),
              Sized_16H(),
              Animator(
                child: InputField(
                  controller: _firstNameController,
                  hintText: 'First Name',
                  labelText: 'First Name',
                  inputType: TextInputType.text,
                ),
              ),
              Sized_16H(),
              Animator(
                child: InputField(
                  controller: _firstNameController,
                  hintText: 'Last Name',
                  labelText: 'Last Name',
                  inputType: TextInputType.text,
                ),
              ),
              Sized_16H(),
              Animator(
                child: InputField(
                  controller: _phoneController,
                  hintText: 'your phone number',
                  labelText: 'Phone',
                  inputType: TextInputType.phone,
                ),
              ),
              Sized_16H(),
              Animator(
                child: InputField(
                  controller: _emailController,
                  hintText: 'abc@gmail.com',
                  labelText: 'Email',
                  inputType: TextInputType.emailAddress,
                ),
              ),
              Sized_16H(),
              Animator(
                child: InputField(
                  controller: _passController,
                  hintText: '*****',
                  isSecret: true,
                  labelText: 'Password',
                  inputType: TextInputType.visiblePassword,
                ),
              ),
              Sized_16H(),
              Animator(
                child: InputField(
                  controller: _rePassController,
                  hintText: '*****',
                  isSecret: true,
                  labelText: 'Confirm Password',
                  inputType: TextInputType.visiblePassword,
                ),
              ),
              Sized_16H(),
              Animator(
                child: PrimaryButton(
                  title: 'Register',
                  onTap: _registerBtnClicked,
                ),
              ),
              Sized_16H(),
            ],
          ),
        )
      ),
    );
  }

  void _registerBtnClicked(){

  }

  void _registerScreenLoginClicked(){

  }


}
