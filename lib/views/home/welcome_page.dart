import 'package:empty/views/faq/faq_page.dart';
import 'package:empty/views/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/tools/print.tool.dart';
import '../../widget/DrawerWidget.dart';
import '../application_view.dart';
import '../connections/connections_page.dart';
import '../inbox/bloc/inbox_bloc.dart';
import '../inbox/inbox_page.dart';
import '../new_listing/bloc/new_listing_bloc.dart';
import '../new_listing/new_listing_page.dart';
import '../settings/bloc/settings_bloc.dart';
import '../settings/settings_page.dart';
import '../view_listing/view_listing_page.dart';
import 'bloc/home_bloc.dart';

// import '../../../../core/utils/image_constant.dart';
// import '../../../../widgets/DrawerWidget.dart';
// import '../../../../widgets/custom_circle_avatar.dart';
// import '../../../../widgets/imageStackWidget.dart';
// import '../../../create_bottom_sheet/create_bottom_sheet.dart';
// import '../../../create_bottom_sheet/create_bottom_sheet_bloc.dart';
// import '../../../navigation/navigation_bloc.dart';
// import '../../../navigation/navigation_event.dart';
// import '../../../trend_feed/individual-post/feed_card_v2.dart';
// import '../circle-list.dart';
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _selectedIndex = 0;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  static final List<String> titles = <String>[
    "Contrats",
  ];
  static final List<Widget> _widgetOptions = <Widget>[const HomePage()];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext rootContext) {
    ApplicationView.globalKey = _globalKey;
    logToConsole(BlocProvider.of<HomeBloc>(rootContext));
    return Scaffold(
      /*appBar: AppBar(
        title: Text(titles[_selectedIndex]),
      ),*/
      resizeToAvoidBottomInset: false,
      body: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          //TODO improve this if else blocks
          if (state.drawerMenuPage == DrawerMenuPageEnum.faq) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BlocProvider.value(
                      value: BlocProvider.of<HomeBloc>(rootContext),
                      child: FaqPage())),
            );
          } else if (state.drawerMenuPage == DrawerMenuPageEnum.connections) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BlocProvider.value(
                      value: BlocProvider.of<HomeBloc>(rootContext),
                      child: ConnectionsPage())),
            );
          } else if (state.drawerMenuPage == DrawerMenuPageEnum.settings) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BlocProvider.value(
                      value: BlocProvider.of<HomeBloc>(rootContext),
                      child: BlocProvider(
                        create: (context) => SettingsBloc(),
                        child: SettingsPage(),
                      ))),
            );
          } else if (state.drawerMenuPage == DrawerMenuPageEnum.inbox) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BlocProvider.value(
                      value: BlocProvider.of<HomeBloc>(rootContext),
                      child: BlocProvider(
                        create: (context) => InboxBloc(),
                        child: InboxPage(),
                      ))),
            );
          } else if (state.navigationPage == NavigationPageEnum.newListing) {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BlocProvider.value(
                      value: BlocProvider.of<HomeBloc>(rootContext),
                      child: BlocProvider(
                        create: (context) => NewListingBloc(),
                        child: NewListingPage(),
                      ))),
            );
          } else if (state.navigationPage == NavigationPageEnum.viewListing) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ViewListingPage()),
            );
          }
        },
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      endDrawer: SearchingProfileDrawerWidget(),
      drawerEnableOpenDragGesture: true,
      endDrawerEnableOpenDragGesture: true,
      key: _globalKey,
    );
  }
}
