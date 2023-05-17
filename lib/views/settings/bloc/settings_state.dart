part of 'settings_bloc.dart';

@immutable
class SettingsState {
  final SettingsPageEnum settingsPageEnum;
  final UpdatePasswordFormState updatePasswordFormState;

  SettingsState(
      {required this.settingsPageEnum, required this.updatePasswordFormState});

  SettingsState copy(
      {SettingsPageEnum? settingsPageEnum,
      UpdatePasswordFormState? updatePasswordFormState}) {
    return SettingsState(
        settingsPageEnum: settingsPageEnum ?? this.settingsPageEnum,
        updatePasswordFormState:
            updatePasswordFormState ?? this.updatePasswordFormState);
  }
}

class SettingsInitial extends SettingsState {
  SettingsInitial()
      : super(
            settingsPageEnum: SettingsPageEnum.none,
            updatePasswordFormState: UpdatePasswordFormState.none);
}

enum SettingsPageEnum { password, none }

enum UpdatePasswordFormState { none, submitted, success, error }
