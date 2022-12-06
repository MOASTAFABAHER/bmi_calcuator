import 'package:color_generator/classes/all_colors.dart';
import 'package:color_generator/components/custom_container.dart';
import 'package:color_generator/components/custom_head_text.dart';
import 'package:color_generator/components/one_button.dart';

import 'package:color_generator/screens/history_screen.dart';
import 'package:color_generator/screens/select_hight.dart';
import 'package:color_generator/utils/app_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  bool isMale = false;
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AllColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            CustomHeadText(data: 'SELECT YOUR ', specialText: 'GENDER'),
            SizedBox(
              height: 20.h,
            ),
            CustomContainer(
              function: () {
                isMale = true;
                AppNavigator.appNavigator(
                    context,
                    SelectHightScreen(
                      isMale: this.isMale,
                    ));
              },
              text: 'Male',
              image:
                  'https://i.pinimg.com/236x/19/48/06/194806c674b8301d6fe82641d721138d.jpg',
            ),
            SizedBox(
              height: 10.h,
            ),
            CustomContainer(
              function: () {
                isMale = false;
                AppNavigator.appNavigator(
                    context, SelectHightScreen(isMale: this.isMale));
              },
              text: 'female',
              image:
                  'https://i.pinimg.com/236x/c7/a1/ed/c7a1ede33fad80089ea4f9484c49d205.jpg',
            ),
            SizedBox(
              height: 20.h,
            ),
            OneButton(
                fontSize: 20.sp,
                function: () {
                  AppNavigator.appNavigator(context, HistoryScreen());
                },
                data: 'History',
                width: 150.w,
                height: 40.h,
                color: AllColors.selectedButtonColor)
          ],
        ),
      ),
    );
  }
}
