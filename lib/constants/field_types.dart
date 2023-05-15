import 'package:flutter/material.dart';

import 'app_localizations.dart';

enum FieldType { profile_pic, name, about, circle_about, circle_name }

class FieldValue {
  FieldType? type;
  Object? value;
  FieldValue(this.type, this.value);
}

class YuTuHint {
  decideFieldTitle(BuildContext context, FieldType type) {
    switch (type) {
      case FieldType.name:
        return AppLocalizations.of(context)!.translate("nameEditInputLabel");
      case FieldType.about:
        return AppLocalizations.of(context)!.translate("aboutEditInputLabel");
      case FieldType.profile_pic:
        break;
      case FieldType.circle_about:
        return AppLocalizations.of(context)!.translate("circleAboutLabel");
      case FieldType.circle_name:
        return AppLocalizations.of(context)!.translate("circleNameLabel");
    }
  }

  decideFieldHint(BuildContext context, FieldType? type) {
    switch (type) {
      case FieldType.name:
        return AppLocalizations.of(context)!.translate("genericPageInputTextfieldPlaceholder");
      case FieldType.about:
        return AppLocalizations.of(context)!.translate("aboutEditInputHintLabel");
      case FieldType.profile_pic:
        break;
      case FieldType.circle_about:
        return AppLocalizations.of(context)!.translate("createPageDescriptionTextFieldPlaceholder");
      case FieldType.circle_name:
        return AppLocalizations.of(context)!.translate("createPageDescriptionTextFieldPlaceholder");
    }
  }
}
