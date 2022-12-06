import 'package:color_generator/classes/all_colors.dart';
import 'package:color_generator/components/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CircleText extends StatelessWidget {
  double radius;
  String? data;
  var fontSize;
  var fontWeight;
  var color;
  var backgroundColor;
  CircleText(
      {required this.backgroundColor,
      required this.radius,
      required this.data,
      this.fontSize,
      this.fontWeight,
      this.color});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: radius,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomText(
          data: data!,
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}
