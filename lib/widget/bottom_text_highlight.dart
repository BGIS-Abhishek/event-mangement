import 'package:flutter/material.dart';

import '../core/themes/app_theme.dart';


class ClickableText extends StatelessWidget {
  final String ? title;
  final VoidCallback ? onTap;
  const ClickableText({
    Key ? key,
    @required this.title,
    @required this.onTap,
  })  : assert(title != null, "Title Must not be null"),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        title ?? '',
        style: AppTheme.regularPrimary1,
      ),
    );
  }
}
