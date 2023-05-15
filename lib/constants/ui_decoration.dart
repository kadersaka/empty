
import 'package:empty/constants/spacing_constants.dart';
import 'package:flutter/cupertino.dart';

import 'colors_constants.dart';

BoxDecoration inputDecorationDefault =  BoxDecoration(
  color: AppColors.INPUT_BACKGROUND,
  border: Border.all(color: AppColors.INPUT_BORDER),
  borderRadius: BorderRadius.all(Radius.circular(AppSpacing.SMALL_BORDER_RADIUS)),
);

BoxDecoration profileSegmentedControlDecoration =  BoxDecoration(
  border: Border.all(color: AppColors.INPUT_BORDER),
  borderRadius: BorderRadius.all(Radius.circular(AppSpacing.MEDIUM_BORDER_RADIUS)),
);