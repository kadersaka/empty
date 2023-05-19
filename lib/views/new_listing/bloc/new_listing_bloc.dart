import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../core/tools/print.tool.dart';

part 'new_listing_event.dart';
part 'new_listing_state.dart';

class NewListingBloc extends Bloc<NewListingEvent, NewListingState> {
  NewListingBloc() : super(NewListingInitial()) {
    on<NewListingEvent>((event, emit) async {
      if (event is NewListingLocationSelectedEvent) {
        await handleLocationSelected(event, emit);
      }
    });
  }

  handleLocationSelected(NewListingLocationSelectedEvent event,
      Emitter<NewListingState> emit) async {
    try {
      emit(state.copyWith(selectedLocation: event.location));
    } catch (e) {
      logToConsole(e);
    }
  }
}
