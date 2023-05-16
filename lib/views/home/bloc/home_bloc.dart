import 'package:bloc/bloc.dart';
import 'package:empty/core/tools/print.tool.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  DrawerMenuPageEnum currentDrawerMenuPage = DrawerMenuPageEnum.none;

  HomeBloc() : super(HomeInitial()) {
    on<HomeEvent>((event, emit) {
      if (event is NavigateToPageEvent) {
        _handleNavigation(event, emit);
      }
    });
  }

  _handleNavigation(NavigateToPageEvent event, Emitter<HomeState> emit) {
    if (event.page != currentDrawerMenuPage) {
      emit(state.copyWith(drawerMenuPage: event.page));
      currentDrawerMenuPage = event.page;
    } else {
      logToConsole("Drawer: Already on the page");
    }
  }
}
