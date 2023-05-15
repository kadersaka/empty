import 'package:flutter/material.dart';

import '../constants/colors_constants.dart';
import '../core/utils/app_style.dart';
class TagWidget extends StatelessWidget {
  const TagWidget({Key? key, required this.text, this.bgColor}) : super(key: key);
  final String text;
  final Color? bgColor;

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: bgColor == null ? AppColors.APP_ICON_COLOR : bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
