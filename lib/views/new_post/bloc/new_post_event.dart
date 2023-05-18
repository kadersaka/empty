part of 'new_post_bloc.dart';

@immutable
abstract class NewPostEvent {}

class NewPostLocationSelectedEvent extends NewPostEvent {
  final String location;

  NewPostLocationSelectedEvent(this.location);
}
