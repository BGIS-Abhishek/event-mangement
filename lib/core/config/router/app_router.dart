import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:winter_event/screen/add.event.screen.dart';
import 'package:winter_event/screen/forgot.screen.dart';
import 'package:winter_event/screen/home.screen.dart';
import 'package:winter_event/screen/view.event.screen.dart';
import '../../../screen/login.screen.dart';
import '../../../screen/register.screen.dart';
import '../../../screen/screen_404.dart';
import '../../../screen/splash_screen.dart';



class AppRoute {
  Route onRouteGenerate(RouteSettings settings) {
   switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => SplashScreen(), settings: settings);
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginScreen(), settings: settings);
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterScreen(), settings: settings);
     case '/forgotPasswordScreen':
       return MaterialPageRoute(builder: (_) => ForgotPasswordScreen(), settings: settings);
     case '/homeScreen':
       return MaterialPageRoute(builder: (_) => HomeScreen(), settings: settings);
     case '/addEventScreen':
       return MaterialPageRoute(builder: (_) => AddEventScreen(), settings: settings);
     case '/viewEventScreen':
       return MaterialPageRoute(builder: (_) => ViewEventScreen(), settings: settings);


      default:
        return MaterialPageRoute(builder: (_) => Screen404());
    }
  }

  static goToNextPage({ required BuildContext context,  required String screen, required Map arguments}) {
    Navigator.pushNamed(context, screen,arguments: arguments);
  }

  static pop(BuildContext context) {
    Navigator.canPop(context) ? Navigator.of(context).pop() : _showErroCantGoBack(context);
  }

  static pushReplacement(BuildContext context, String routeName, { required Map arguments, screen}) {
    Navigator.pushReplacementNamed(context, routeName, arguments: arguments);
  }

  static _showErroCantGoBack(BuildContext context) {
    Flushbar(
      title: "Error",
      message: "No Screen to go Back",
      duration: const Duration(seconds: 2),
      flushbarPosition: FlushbarPosition.TOP,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      borderRadius: BorderRadius.circular(8),
      backgroundColor: Colors.redAccent,
      blockBackgroundInteraction: false,
    ).show(context);
  }
}