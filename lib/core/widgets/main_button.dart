import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/text_style.dart';

class Main_Button extends StatelessWidget {
  const Main_Button({
    super.key,
    required this.text,
    required this.onPressed,
    this.width = double.infinity,
    this.height = 56,
    this.bgColor = AppColors.primaryColor,
    this.borderColor,
    this.textColor = AppColors.backgroundColor,
  });
  final String text;
  final Function() onPressed;
  final double width;
  final double height;
  final Color bgColor;
  final Color? borderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          side: BorderSide(
            color: borderColor != null
                ? AppColors.darkColor
                : Colors.transparent,
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: (TextStyles.textStyle15.copyWith(color: textColor)),
        ),
      ),
    );
  }
}
