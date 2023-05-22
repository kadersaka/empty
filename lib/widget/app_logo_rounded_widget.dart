import 'package:flutter/material.dart';

import '../constants/colors_constants.dart';

class AppLogoRoundedWidget extends StatelessWidget {
  const AppLogoRoundedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      padding: EdgeInsets.all(8),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        // color: floatinButtonColor ?? Colors.white,
        color: AppColors.PRIMARY_BRAND,
        // image: DecorationImage(image: AssetImage("assets/images/yutu_logo_white.png" ), fit: BoxFit.fill),
        boxShadow: const [
          BoxShadow(
            color: Colors.white24,
            blurRadius: 5,
          ),
        ],
      ),
      // child: openFloatingActionButton,
      child: Image.asset(
        "assets/images/yutu_logo_white.png",
        fit: BoxFit.fill,
      ),
    );
  }
}
