import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:winter_event/util/screen_util/screen_util.dart';
import 'core/config/router/app_router.dart';
import 'storage/base_local.dart';


void main(){
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  Preference();

  runApp(MyApp(AppRoute()));
}

class MyApp extends StatelessWidget {
  final AppRoute appRouter;
  MyApp(this.appRouter);
  @override
  Widget build(BuildContext context) {

    return ScreenUtil(
      designSize: DesignSize(height: 812, width: 375),
      child:/*MultiProvider(
        providers:[
          ChangeNotifierProvider<LoginPageProvider>(
            create: (context) => LoginPageProvider(),
          ),
        ],
        child:*/ MaterialApp(
          title: 'Winter Event',
          theme: ThemeData(
            primarySwatch: Colors.green,
          ),

          onGenerateRoute: appRouter.onRouteGenerate,
          debugShowCheckedModeBanner: false,
        ),
      // ),
    );
  }
}
