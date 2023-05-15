import 'package:flutter/material.dart';
class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({Key? key, required this.backgroundImage, required this.radius}) : super(key: key);
  final String backgroundImage;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return backgroundImage.startsWith("http") ?
    CircleAvatar(
      // backgroundImage: bgImage.startsWith("http") ? NetworkImage(bgImage) : NetworkImage(bgImage),
      backgroundImage: NetworkImage(backgroundImage),
      // backgroundImage: AssetImage(backgroundImage),
      radius: radius,
      onBackgroundImageError: (e, s) {
        debugPrint('image issue, $e,$s');
      },
    )
    :
    CircleAvatar(
      backgroundImage: AssetImage(backgroundImage),
      radius: radius,
      onBackgroundImageError: (e, s) {
        debugPrint('image issue, $e,$s');
      },
    );
  }
}
