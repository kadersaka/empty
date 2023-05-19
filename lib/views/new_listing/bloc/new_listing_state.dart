part of 'new_listing_bloc.dart';

@immutable
class NewListingState {
  final String? selectedLocation;

  const NewListingState({required this.selectedLocation});
  NewListingState copyWith({String? selectedLocation}) {
    return NewListingState(
        selectedLocation: selectedLocation ?? this.selectedLocation);
  }
}

class NewListingInitial extends NewListingState {
  const NewListingInitial() : super(selectedLocation: null);
}
