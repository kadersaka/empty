part of 'new_post_bloc.dart';

@immutable
class NewPostState {
  final String? selectedLocation;

  const NewPostState({required this.selectedLocation});
  NewPostState copyWith({String? selectedLocation}) {
    return NewPostState(
        selectedLocation: selectedLocation ?? this.selectedLocation);
  }
}

class NewPostInitial extends NewPostState {
  const NewPostInitial() : super(selectedLocation: null);
}
