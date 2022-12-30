import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:winter_event/core/themes/app_theme.dart';
import 'package:winter_event/util/screen_util/screen_util.dart';
import 'package:winter_event/widget/common_app_bar.dart';
import 'package:winter_event/widget/sized_box/sized_box.dart';

import '../widget/base_entry/entry_main.dart';
import '../widget/input_field.dart';
import '../widget/primary_button.dart';
class ForgotPasswordScreen extends StatefulWidget {
  static const String route = '/forgotPasswordScreen';
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  TextEditingController ?_emailController;

  @override
  void initState() {
    _emailController = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _emailController!.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:const CommonAppBar(
        title: 'Forgot Password',
        actions: [],
      ),
      body: SingleChildScrollView(
        child:Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w) ,
          child:Column(
            children: [
              Center(
                child:Lottie.asset(
                  'assets/lotties/forgotPassword.json',
                  animate: true,
                ),
              ),
              Sized_16H(),
              Padding(padding: EdgeInsets.symmetric(horizontal: 8.w),
                child:const  Text('Please provide your email address to recover your account.',
                  style: AppTheme.regularPrimary2,
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
                child: PrimaryButton(
                  title: 'Continue',
                  onTap: _forgotClicked,
                ),
              ),
            ],
          ),
        )

      ),
    );
  }

  void _forgotClicked(){
    
  }
}
