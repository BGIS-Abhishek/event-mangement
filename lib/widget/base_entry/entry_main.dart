import 'package:entry/entry.dart';
import 'package:flutter/material.dart';

enum Anim { offset, opacity, scale, all }

class Animator extends StatelessWidget {
  final Widget ? child;
  final Anim type;
  const Animator({this.child, this.type = Anim.scale});
  final commonWidgetDelayDuration = const Duration(milliseconds: 120);
  final commonWidgetAnimationDuration = const Duration(milliseconds: 400);

  @override
  Widget build(BuildContext context) {
    if (type == Anim.offset) {
      return Entry.offset(
        child: child!,
        delay: commonWidgetDelayDuration,
        curve: Curves.easeIn,
        duration: commonWidgetAnimationDuration,
        yOffset: 100,
      );
    } else if (type == Anim.opacity) {
      return Entry.opacity(
        child: child!,
        delay: commonWidgetDelayDuration,
        curve: Curves.easeIn,
        duration: commonWidgetAnimationDuration,
        opacity: 0,
      );
    } else if (type == Anim.scale) {
      return Entry.scale(
        child: child!,
        delay: commonWidgetDelayDuration,
        curve: Curves.easeIn,
        duration: commonWidgetAnimationDuration,
        scale: 0,
      );
    } else {
      return Entry.all(
        child: child!,
        delay: commonWidgetDelayDuration,
        curve: Curves.easeIn,
        duration: commonWidgetAnimationDuration,
      );
    }
  }
}
