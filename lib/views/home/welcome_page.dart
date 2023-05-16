import 'package:empty/views/faq/faq_page.dart';
import 'package:empty/views/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/tools/print.tool.dart';
import '../../widget/DrawerWidget.dart';
import '../application_view.dart';
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
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage()
  ];

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
      body: BlocListener<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.drawerMenuPage == DrawerMenuPageEnum.faq) {
            /*setState(() {
              _selectedIndex = 1;
            });*/

            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => BlocProvider.value(
                      value: BlocProvider.of<HomeBloc>(rootContext),
                      child: FaqPage())),
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
