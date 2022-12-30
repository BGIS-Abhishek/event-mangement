import 'package:flutter/material.dart';
import 'package:winter_event/util/screen_util/screen_util.dart';
import '../core/config/router/app_router.dart';
import '../core/constants/hero_tags.dart';
import '../core/resources/assets.dart';
import '../core/themes/app_theme.dart';
import 'login.screen.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
   // hideStatusBar();
    WidgetsBinding.instance.addPostFrameCallback((_) {
       checkIsLogin();
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ImageAsset.splash_bg,
            fit: BoxFit.cover,
            width: size.width,
            height: size.height,
          ),
          Center(
            heightFactor: 7,
            child: Text(
              'Winter Events',
              style: AppTheme.headingStyle,
            ),
          ),
          // Positioned(
          //   top: 10.h,
          //   right: 100.w,
          //   left: 100.w,
          //   child:Text(
          //     'Winter Events',
          //     style: AppTheme.headingStyle,
          //   ),
          // ),
        ],
      ),
    );
  }

  // void hideStatusBar() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  // }

  void checkIsLogin() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      // final pref = Preference();
      // if (pref.getBool(Keys.Pref_IsLogin)==true) {
      //       Provider.of<LoginPageProvider>(context, listen: false).getLogin(context,pref.getString(Keys.USERNAME),pref.getString(Keys.PASSWORD));
      //    } else {
        //TODO show dashboard
        AppRoute.goToNextPage(context: context, screen: LoginScreen.route, arguments: {});
      // }
    });
  }
}