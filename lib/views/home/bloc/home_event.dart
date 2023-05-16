part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class NavigateToPageEvent extends HomeEvent {
  final DrawerMenuPageEnum page;

  NavigateToPageEvent(this.page);
}
