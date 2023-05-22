part of 'home_bloc.dart';

@immutable
class HomeState {
  //TODO move navigation logic to another bloc
  final DrawerMenuPageEnum drawerMenuPage;
  final NavigationPageEnum navigationPage;

  HomeState({required this.drawerMenuPage, required this.navigationPage});

  HomeState copyWith(
      {DrawerMenuPageEnum? drawerMenuPage,
      NavigationPageEnum? navigationPage}) {
    return HomeState(
        drawerMenuPage: drawerMenuPage ?? this.drawerMenuPage,
        navigationPage: navigationPage ?? this.navigationPage);
  }
}

class HomeInitial extends HomeState {
  HomeInitial()
      : super(
            drawerMenuPage: DrawerMenuPageEnum.none,
            navigationPage: NavigationPageEnum.none);
}

enum DrawerMenuPageEnum { faq, connections, settings, none }

enum NavigationPageEnum { none, newListing, viewListing }