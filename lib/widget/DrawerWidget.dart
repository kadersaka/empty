import 'dart:io';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:empty/core/tools/print.tool.dart';
import 'package:empty/views/faq/faq_page.dart';
import 'package:empty/views/home/bloc/home_bloc.dart';
import 'package:empty/widget/dialogs/custom_simple_dailog.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/app_localizations.dart';
import '../core/utils/default_dialog.tools.dart';
import '../views/search/bloc/search_bloc.dart';
import '../views/search/main_search_view.dart';
import 'container/bottom_sheet_modal_container.dart';
import 'custom_circle_avatar.dart';

class SearchingProfileDrawerWidget extends StatefulWidget {
  @override
  _SearchingProfileDrawerWidgetState createState() =>
      _SearchingProfileDrawerWidgetState();
}

class _SearchingProfileDrawerWidgetState
    extends State<SearchingProfileDrawerWidget> {
  MediaQueryData? deviceInfo;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    deviceInfo ??= MediaQuery.of(context);
    return Drawer(
      child: Container(
        margin: EdgeInsets.only(left: 30, right: 30),
        child: ListView(
          children: <Widget>[
            /*
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).hintColor.withOpacity(0.1),
              ),
              accountName: Text("Hi (Username)!",
                // style: Theme.of(context).textTheme.headline6,
              ),
              accountEmail: Text("Joined 2019",
                style: Theme.of(context).textTheme.caption,
              ),
              currentAccountPicture: GestureDetector(
                onTap: () {
                  // _selectAndUploadFile(context);
                },
                child: CircleAvatar(
                  // child: Align(
                  //   alignment: Alignment.topRight,
                  //     child: Icon(Icons.camera_alt),
                  // ),
                  radius: 30,
                  backgroundColor: Theme.of(context).primaryColor,
                  // backgroundImage: NetworkImage(Commons.user.photo_profil ?? "http://firstlogistics.fr/canalcombenin/pp.png"),
                  backgroundImage: CachedNetworkImageProvider("https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
                ),
              ),
            ),
            SizedBox(height: 20,),
            */
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Home()), (Route<dynamic> route) => false);
              },
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Theme.of(context).primaryColor,
                backgroundImage: CachedNetworkImageProvider(
                    "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80"),
              ),
              title: Text(
                "Hi (Username)!",
                // style: Theme.of(context).textTheme.headline6,
              ),
              subtitle: Text(
                "Joined 2019",
                style: Theme.of(context).textTheme.caption,
              ),
              contentPadding: EdgeInsets.all(0),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "View Profile",
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 14,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomCircleAvatar(
                  backgroundImage:
                      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
                  radius: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                CustomCircleAvatar(
                  backgroundImage:
                      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
                  radius: 20,
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Home()), (Route<dynamic> route) => false);
              },
              leading: FaIcon(
                FontAwesomeIcons.inbox,
                // color: Colors.white,
                size: 23,
              ),
              // leading: Icon(
              //   Icons.drive_file_move_rtl_outlined,
              //   // color: Theme.of(context).primaryColor.withOpacity(1),
              // ),
              title: Text(
                "inbox",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              contentPadding: EdgeInsets.all(0),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Home()), (Route<dynamic> route) => false);
              },
              leading: FaIcon(
                FontAwesomeIcons.heart,
                // color: Colors.white,
                size: 23,
              ),
              // leading: Icon(
              //   Icons.drive_file_move_rtl_outlined,
              //   // color: Theme.of(context).primaryColor.withOpacity(1),
              // ),
              title: Text(
                "saved",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              contentPadding: EdgeInsets.all(0),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Home()), (Route<dynamic> route) => false);
                logToConsole(BlocProvider.of<HomeBloc>(context));
                BlocProvider.of<HomeBloc>(context)
                    .add(NavigateToPageEvent(DrawerMenuPageEnum.connections));
              },
              leading: FaIcon(
                FontAwesomeIcons.users,
                // color: Colors.white,
                size: 23,
              ),
              // leading: Icon(
              //   Icons.drive_file_move_rtl_outlined,
              //   // color: Theme.of(context).primaryColor.withOpacity(1),
              // ),
              title: Text(
                "Connections",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              contentPadding: EdgeInsets.all(0),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Home()), (Route<dynamic> route) => false);
                _handleSearchMenu();
              },
              leading: FaIcon(
                FontAwesomeIcons.search,
                // color: Colors.white,
                size: 23,
              ),
              // leading: Icon(
              //   Icons.drive_file_move_rtl_outlined,
              //   // color: Theme.of(context).primaryColor.withOpacity(1),
              // ),
              title: Text(
                "search",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              contentPadding: EdgeInsets.all(0),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Home()), (Route<dynamic> route) => false);
                logToConsole(BlocProvider.of<HomeBloc>(context));
                BlocProvider.of<HomeBloc>(context)
                    .add(NavigateToPageEvent(DrawerMenuPageEnum.settings));
              },
              leading: FaIcon(
                FontAwesomeIcons.cog,
                // color: Colors.white,
                size: 23,
              ),
              // leading: Icon(
              //   Icons.drive_file_move_rtl_outlined,
              //   // color: Theme.of(context).primaryColor.withOpacity(1),
              // ),
              title: Text(
                "Settings",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              contentPadding: EdgeInsets.all(0),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).pop();
                // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Home()), (Route<dynamic> route) => false);
                logToConsole(BlocProvider.of<HomeBloc>(context));
                BlocProvider.of<HomeBloc>(context)
                    .add(NavigateToPageEvent(DrawerMenuPageEnum.faq));
              },
              leading: FaIcon(
                FontAwesomeIcons.questionCircle,
                // color: Colors.white,
                size: 23,
              ),
              // leading: Icon(
              //   Icons.drive_file_move_rtl_outlined,
              //   // color: Theme.of(context).primaryColor.withOpacity(1),
              // ),
              title: Text(
                "FAQ",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              contentPadding: EdgeInsets.all(0),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              onTap: () {
                //Navigator.of(context).pop();
                // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Home()), (Route<dynamic> route) => false);
                _handleLogout();
              },
              leading: FaIcon(
                FontAwesomeIcons.signOutAlt,
                // color: Colors.white,
                size: 23,
              ),
              // leading: Icon(
              //   Icons.drive_file_move_rtl_outlined,
              //   // color: Theme.of(context).primaryColor.withOpacity(1),
              // ),
              title: Text(
                "Log Out",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              contentPadding: EdgeInsets.all(0),
            ),
          ],
        ),
      ),
    );
  }

  _handleSearchMenu() {
    logToConsole(deviceInfo);
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        isScrollControlled: true,
        builder: (builderContext) {
          return BottomSheetModalContainer(
                  title: "Search",
                  hasCancel: true,
                  child: BlocProvider(
              create: (context) => SearchBloc(),
              child: SearchView(),
            ));
        });
  }

  _handleLogout() {
    /*displayDialogMessage(context, "Deconection",
        "Are you sure you want to log out of YuTU?", "Yes, Log Out", () {
      //TODO Move this to be an action trigerred by receiving an avent from a bloc
      //In another page
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Deconnected'),
      ));
    });*/

    showDialog(
      context: context,
      builder: (context) => CustomSimpleDialog(
        text: 'Are you sure you want to log out of YuTU?',
        okText: "Yes, Log Out",
        onOk: () {},
      ),
    );

    /*showGeneralDialog(
    barrierDismissible: true,
    barrierLabel: '',
    barrierColor: Colors.black38,
    transitionDuration: Duration(milliseconds: 500),
    pageBuilder: (ctx, anim1, anim2) => AlertDialog(
        title: Text('blured background'),
        content: Text('background should be blured and little bit darker '),
        elevation: 2,
        actions: [
            TextButton(
                child: Text('OK'),
                onPressed: () {
                    Navigator.of(context).pop();
                },
              ),
            ],
   ),
   transitionBuilder: (ctx, anim1, anim2, child) => BackdropFilter(
       filter: ImageFilter.blur(sigmaX: 40 * anim1.value, sigmaY: 40 * anim1.value),
           child: FadeTransition(
               child: child,
               opacity: anim1,
           ),
       ),
   context: context,
);*/
  }

  _handleFaqPageNavigation() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FaqPage()),
    );
  }
}
