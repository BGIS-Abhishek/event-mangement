import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/themes/app_color.dart';
import '../core/themes/app_theme.dart';



class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final title;
  final List<Widget> ? actions;
  final bool  flag;
  const CommonAppBar({
    @required this.title,
    this.actions,
    this.flag=false,
    Key ? key,
  })  : assert(title != null, 'title must not be null'),
        super(key: key);

  @override
  PreferredSizeWidget build(BuildContext context) {

    return AppBar(
      foregroundColor: Colors.white,
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          flag==null||flag==true?
          Icon(
              Icons.arrow_back_ios,
              color: AppColor.backgroundScreen,
          ):
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
          Text(
            title ?? '',
            style: AppTheme.appBarTitleTextStyle,
          ),
          Icon(
            Icons.arrow_back_ios,
            color: AppColor.backgroundScreen,
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: actions, systemOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
