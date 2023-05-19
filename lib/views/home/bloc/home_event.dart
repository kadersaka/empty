part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

//TODO change back to a name that define a drawer menu item clicked
class NavigateToPageEvent extends HomeEvent {
  final DrawerMenuPageEnum page;

  NavigateToPageEvent(this.page);
}


//TODO change back to NavigateToPageEvent
class NavigateAppToPageEvent extends HomeEvent {
  final NavigationPageEnum page;

  NavigateAppToPageEvent(this.page);
  
}
