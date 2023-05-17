import 'package:bloc/bloc.dart';
import 'package:empty/core/tools/print.tool.dart';
import 'package:meta/meta.dart';

part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsPageEnum currentSettingsPageEnum = SettingsPageEnum.none;
  SettingsBloc() : super(SettingsInitial()) {
    on<SettingsEvent>((event, emit) async {
      if (event is SettingsUpdatePasswordEvent) {
        await _handleUpdatePassword(event, emit);
      }
    });
  }

  _handleUpdatePassword(
      SettingsUpdatePasswordEvent event, Emitter<SettingsState> emit) async {
    try {
      await Future.delayed(Duration(seconds: 2), () {});
      emit(
          state.copy(updatePasswordFormState: UpdatePasswordFormState.success));
      logToConsole("Password updated");
    } catch (e) {
      logToConsole(e);
    }
  }
}
