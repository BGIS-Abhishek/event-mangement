import 'package:flutter/material.dart';
import 'package:winter_event/util/screen_util/screen_util.dart';
import '../core/config/router/app_router.dart';
import '../core/themes/app_color.dart';

class BottomSheet extends StatelessWidget {
  final  String ? botton1;
  final String ? botton2;
  final VoidCallback ? onTap,onTap1;
  const BottomSheet ({this.botton1,this.botton2,this.onTap,this.onTap1,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 100.0.h,
            color: const Color(0xFF737373),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12.r),
                      topRight: Radius.circular(12.r))),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap:onTap,
                            child: Container(
                              width: 135.w,
                              height: 55.h,
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              margin: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColor.bgComparedShadeColor, width: .2),
                                borderRadius: BorderRadius.circular(6.r),
                                color: AppColor.inputTextFieldColor,
                              ),
                              child: Row(
                                children:  [
                                 const Icon(
                                    Icons.camera,
                                    size: 32,
                                    color: Colors.black,
                                  ),
                                 const SizedBox(
                                    width: 10,
                                  ),
                                  Text(botton1.toString()),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          InkWell(
                            onTap: onTap1,
                            child: Container(
                              width: 135.w,
                              height: 55.h,
                              padding:
                              const EdgeInsets.symmetric(horizontal: 10),
                              margin: const EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                              decoration: BoxDecoration(
                                border: Border.all(color: AppColor.bgComparedShadeColor, width: .2),
                                borderRadius: BorderRadius.circular(6.r),
                                color: AppColor.inputTextFieldColor,
                              ),
                              child: Row(
                                children:  [
                                 const Icon(
                                    Icons.folder,
                                    size: 32,
                                    color: Colors.black,
                                  ),
                                 const SizedBox(
                                    width: 10,
                                  ),
                                  Text(botton2.toString()),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}