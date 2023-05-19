part of 'new_listing_bloc.dart';

@immutable
abstract class NewListingEvent {}

class NewListingLocationSelectedEvent extends NewListingEvent {
  final String location;

  NewListingLocationSelectedEvent(this.location);
}