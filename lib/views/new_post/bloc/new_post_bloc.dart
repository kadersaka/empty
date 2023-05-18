import 'package:bloc/bloc.dart';
import 'package:empty/core/tools/print.tool.dart';
import 'package:meta/meta.dart';

part 'new_post_event.dart';
part 'new_post_state.dart';

class NewPostBloc extends Bloc<NewPostEvent, NewPostState> {
  NewPostBloc() : super(NewPostInitial()) {
    on<NewPostEvent>((event, emit) async {
      if (event is NewPostLocationSelectedEvent) {
        await handleLocationSelected(event, emit);
      }
    });
  }

  handleLocationSelected(
      NewPostLocationSelectedEvent event, Emitter<NewPostState> emit) async {
    try {
      emit(state.copyWith(selectedLocation: event.location));
    } catch (e) {
      logToConsole(e);
    }
  }
}
