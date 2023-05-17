part of 'settings_bloc.dart';

@immutable
abstract class SettingsEvent {}

class SettingsUpdatePasswordEvent extends SettingsEvent {
  final UpdatePasswordFormState state;

  SettingsUpdatePasswordEvent(this.state);
}
