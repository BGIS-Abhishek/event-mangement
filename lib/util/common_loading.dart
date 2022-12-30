import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../core/themes/app_color.dart';
import '../core/themes/app_theme.dart';

bool isShowLoading = false;
showLoading(BuildContext context, {dissmissable = false, text = 'Loading'}) {
  if (!isShowLoading) {
    //LoadingScreen is not shown
    isShowLoading = true;
    showDialog(
        barrierDismissible: dissmissable,
        context: context,
        useRootNavigator: false,
        builder: (context) {
          return Center(
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                      Lottie.asset(
                        'assets/lotties/loading.json',
                        animate: true,
                        height: 100,
                        width: 100,
                      ),
                  const SizedBox(
                    height: 10,
                  ),
                  Material(
                    child: Text(
                      text,
                       style: AppTheme.regularPrimary.copyWith(color: AppColor.themeColor),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

hideLoading(BuildContext context) {
  if (isShowLoading) {
    isShowLoading = false;
    Navigator.of(context, rootNavigator: false).pop();
  }
}
