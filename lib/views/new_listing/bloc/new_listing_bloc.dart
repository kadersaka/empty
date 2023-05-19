import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'new_listing_event.dart';
part 'new_listing_state.dart';

class NewListingBloc extends Bloc<NewListingEvent, NewListingState> {
  NewListingBloc() : super(NewListingInitial()) {
    on<NewListingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
