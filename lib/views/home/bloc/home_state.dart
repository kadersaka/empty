part of 'home_bloc.dart';

@immutable
class HomeState {
  final DrawerMenuPageEnum drawerMenuPage;

  HomeState({required this.drawerMenuPage});

  HomeState copyWith({DrawerMenuPageEnum? drawerMenuPage}) {
    return HomeState(drawerMenuPage: drawerMenuPage ?? this.drawerMenuPage);
  }
}

class HomeInitial extends HomeState {
  HomeInitial() : super(drawerMenuPage: DrawerMenuPageEnum.none);
}

enum DrawerMenuPageEnum { faq, none }
