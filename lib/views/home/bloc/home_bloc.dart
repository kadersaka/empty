import 'package:bloc/bloc.dart';
import 'package:empty/core/tools/print.tool.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  DrawerMenuPageEnum currentDrawerMenuPage = DrawerMenuPageEnum.none;
  NavigationPageEnum currentNavigationPage = NavigationPageEnum.none;

  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      if (event is NavigateToPageEvent) {
        _handleNavigation(event, emit);
      } else if (event is NavigateAppToPageEvent) {
        _handlePageNavigation(event, emit);
      }
    });
  }

  _handleNavigation(NavigateToPageEvent event, Emitter<HomeState> emit) {
    if (event.page != currentDrawerMenuPage) {
      emit(state.copyWith(
          drawerMenuPage: event.page, navigationPage: NavigationPageEnum.none));
      //currentDrawerMenuPage = event.page;
    } else {
      logToConsole("Drawer: Already on the page");
    }
  }

  void _handlePageNavigation(
      NavigateAppToPageEvent event, Emitter<HomeState> emit) {
    if (event.page != currentNavigationPage) {
      emit(state.copyWith(
          navigationPage: event.page, drawerMenuPage: DrawerMenuPageEnum.none));
      //currentNavigationPage = event.page;
    } else {
      logToConsole("Drawer: Already on the page");
    }
  }

  void clearNav() {
    //state.copyWith(
    //    navigationPage: NavigationPageEnum.none,
    //    drawerMenuPage: DrawerMenuPageEnum.none));
  }
}
