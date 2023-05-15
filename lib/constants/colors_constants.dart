import 'dart:ui' show Color;

class AppColors {
  static const VIEW_PREVIEW_BTN_TEXT = const Color(0xffffffff);
  static const BOTTOM_NAV_ACTIVE_TAB = const Color(0xffffffff);
  static const BOTTOM_NAV_INACTIVE_TAB = const Color(0xffd9d9d9);

  //Brand Colors
  static const PRIMARY_BRAND = const Color(0xff0DC0F3);
  static const SECONDARY_COLOR = const Color(0xffffb800);
  static const SECONDARY_RED_COLOR = const Color(0xffEF1B67);

  static const TEXT_PRIMARY = const Color(0xff303648);
  static const TEXT_PRIMARY_BLACK = const Color(0xff303648);

  static const BLUE_BRANDED_FILL = const Color(0xffD9F5FE);
  static const BLUE_BRANDED_TEXT = const Color(0xff398BA9);
  static const PRIMARY_BRAND_GREEN = const Color(0xff8FC642);
  static const PRIMARY_BRAND_SECONDARY_GREEN = const Color(0xffA1BC8A);
  static const INPUT_BORDER = const Color(0xffE9EDF8);
  static const INPUT_BORDER_ERROR = const Color(0xffF3CDDB);

  static const INPUT_BACKGROUND = const Color(0xffFBFCFF);
  static const DESCRIPTION_LABEL = const Color(0xff7B90C7);
  static const DROP_SHADOW_COLOR = const Color(0xff7B90C7);

  static const PLACEHOLDER_TEXT = const Color(0xff909AB6);

  static const SECONDARY_3_PRIMARY = const Color(0xffB5C1E0);
  static const DETAIL_BACKGROUND = const Color(0xffffffff);
  static const OVERLAY_BACKGROUND = const Color(0xff303648);
  static const FACEBOOK_BUTTON_COLOR = const Color(0xff4469B1);
  static const APPLE_BUTTON_COLOR = const Color(0xff303648);
  static const APP_ICON_COLOR = const Color(0xff5C71A8);

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
