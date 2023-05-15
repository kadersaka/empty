import 'package:flutter/material.dart';

import '../constants/colors_constants.dart';

class GradientContainerWidget extends StatelessWidget {
  final List<Color> colors;
  final String colorName;

  GradientContainerWidget({Key? key, required this.colors, required this.colorName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10.0),
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: colors,
        ),
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.PRIMARY_BRAND,
          width: 2.0,
        ),
      ),
    );
  }
}
