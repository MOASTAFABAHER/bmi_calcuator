import 'dart:ffi';

import 'package:color_generator/classes/all_colors.dart';
import 'package:color_generator/components/circle_text.dart';
import 'package:color_generator/components/one_button.dart';
import 'package:color_generator/screens/home_screen.dart';
import 'package:color_generator/service/shared_prefrence_helper.dart';
import 'package:color_generator/service/shared_prefrence_keys.dart';
import 'package:color_generator/utils/app_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HistoryScreen extends StatelessWidget {
  String weight = 'sa';
  int hight = 0;
  String isMale = 'x';
  HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // isMale =
            //     SharedPrefrenceHelper.getData(key: SharedPrefrenceKeys.gender),
            // hight =
            //     SharedPrefrenceHelper.getData(key: SharedPrefrenceKeys.hight),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleText(
                    backgroundColor: AllColors.circleTextColor,
                    radius: 50.r,
                    data:
                        'Wight = ${SharedPrefrenceHelper.getData(key: SharedPrefrenceKeys.weight)}'),
                SizedBox(
                  width: 10.w,
                ),
                CircleText(
                    color: Colors.white,
                    backgroundColor: AllColors.activeColorSlider,
                    radius: 50.r,
                    data:
                        'Hight = ${SharedPrefrenceHelper.getData(key: SharedPrefrenceKeys.hight)}'),
                SizedBox(
                  width: 10.w,
                ),
                CircleText(
                    color: Colors.white,
                    backgroundColor: Colors.green,
                    radius: 50.r,
                    data:
                        'Gender = ${SharedPrefrenceHelper.getData(key: SharedPrefrenceKeys.gender)}')
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            OneButton(
              data: 'Back',
              width: 80.w,
              height: 35.h,
              color: AllColors.selectedButtonColor,
              function: () {
                AppNavigator.appNavigator(context, HomeScreen());
              },
            )
          ],
        ),
      ),
    );
  }
}
