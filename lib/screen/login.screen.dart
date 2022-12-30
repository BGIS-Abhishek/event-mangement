import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:winter_event/screen/forgot.screen.dart';
import 'package:winter_event/screen/home.screen.dart';
import 'package:winter_event/screen/register.screen.dart';
import 'package:winter_event/util/screen_util/screen_util.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../core/config/router/app_router.dart';
import '../core/constants/hero_tags.dart';
import '../core/resources/assets.dart';
import '../core/themes/app_color.dart';
import '../core/themes/app_theme.dart';
import '../widget/base_entry/entry_main.dart';
import '../widget/bottom_text_highlight.dart';
import '../widget/input_field.dart';
import '../widget/primary_button.dart';
import '../widget/sized_box/sized_box.dart';


class LoginScreen extends StatefulWidget {
  static const String route = '/login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController ? _emailController,
      _passwordController,
      _nameRegisterController,
      _phoneRegisterController,
      _emailRegisterController,
      _passRegisterController,
      _rePassRegisterController,
      _answerRegisterController;

  String ? _initialQuestion;
  @override
  void initState() {
    setStatusbartoDefault();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _nameRegisterController = TextEditingController();
    _phoneRegisterController = TextEditingController();
    _emailRegisterController = TextEditingController();
    _passRegisterController = TextEditingController();
    _rePassRegisterController = TextEditingController();
    _answerRegisterController = TextEditingController();

    if (kDebugMode) {


    }
    super.initState();
  }

  @override
  void dispose() {
    _emailController?.dispose();
    _passwordController?.dispose();
    _nameRegisterController?.dispose();
    _phoneRegisterController?.dispose();
    _emailRegisterController?.dispose();
    _passRegisterController?.dispose();
    _rePassRegisterController?.dispose();
    _answerRegisterController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    // _bloc = BlocProvider.of<AuthenticationBloc>(context);
    return Scaffold(
        backgroundColor: AppColor.backgroundScreen,
        body: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.h),
                        child: Hero(
                          tag: HeroTags.tagSplashIcon,
                          child: Animator(
                            type: Anim.opacity,
                            child: SvgPicture.asset(
                              ImageAsset.login_bg,
                              height: 500,
                              // width: 400,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 45.0),
                  child: Animator(child: _getLoginContainer()),
                ),
              )
            ],
          ),
        );
  }

  Widget _getLoginContainer() {
    return AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
        margin: EdgeInsets.symmetric(horizontal: 12.w),
        padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
        child: SingleChildScrollView(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Login',
                  style: AppTheme.headingStyle,
                ),
                Sized_4H(),
                SizedBox(
                  width: 70.w,
                  child: Divider(
                    height: 0,
                    thickness: 2.r,
                    color: AppColor.themeColor,
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
                    controller: _passwordController,
                    hintText: '*****',
                    isSecret: true,
                    labelText: 'Password',
                    inputType: TextInputType.visiblePassword,
                  ),
                ),
                Sized_16H(),
                Animator(
                  child: PrimaryButton(
                    title: 'Login',
                    onTap: _loginClicked,
                  ),
                ),
                Sized_16H(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Animator(
                      child: ClickableText(
                        title: ' Register',
                        onTap: _registerClicked,
                      ),
                    ),
                    Animator(
                      child: ClickableText(
                        title: 'Forgot Password ',
                        onTap: _forgotClicked,
                      ),
                    ),
                  ],
                )
              ],
            )
        )
    );
  }

  _loginClicked() {
    AppRoute.goToNextPage(context: context, screen: HomeScreen.route,arguments: {});
  }

  void _registerClicked() {
    AppRoute.goToNextPage(context: context, screen: RegisterScreen.route,arguments: {});
  }

  _forgotClicked() {
    AppRoute.goToNextPage(context: context, screen: ForgotPasswordScreen.route, arguments: {});
  }

  void setStatusbartoDefault() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
  }


}