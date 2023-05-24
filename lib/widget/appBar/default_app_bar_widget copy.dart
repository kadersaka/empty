import 'package:empty/core/tools/print.tool.dart';
import 'package:flutter/material.dart';

import '../../views/CreateCircleBottomSheet.dart';
import '../../views/application_view.dart';

class DefaultAppBarWidget extends StatelessWidget {
  final bool dark;
  final GlobalKey<ScaffoldState>? globalKey;
  const DefaultAppBarWidget({super.key, this.dark = false, required this.globalKey,  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {
            /*showModalBottomSheet(
                context: context,
                elevation: 0,
                backgroundColor: Colors.white,
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
                /*
                          builder: (context) => BlocProvider<CreateBottomSheetBloc>(
                            lazy: true,
                            create: (blockContext) => CreateBottomSheetBloc(navigationBloc: BlocProvider.of<NavigationBloc>(context)),
                            child: CreateBottomSheet(),
                          ),
                          */
                builder: (context) => const CreateCircleBottomSheet());*/

                /*
                MenuAnchor(
          childFocusNode: _buttonFocusNode,
          menuChildren: <Widget>[
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "FILTER",
                        style:
                            TextStyle(color: Color(0xff737A82), fontSize: 16),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Closest to you",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Most Recent",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: _isChecked,
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        onChanged: (value) {
                          setState(() {
                            _isChecked = value!;
                          });
                        },
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Most Favorited",
                        style: TextStyle(fontSize: 14),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Divider(
                    height: 20,
                    color: Colors.red,
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    children: [
                      Text(
                        "PRICE",
                        style:
                            TextStyle(color: Color(0xff737A82), fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_upward,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Sort Ascending",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_downward,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Sort Descending",
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
          builder:
              (BuildContext context, MenuController controller, Widget? child) {
            return TextButton(
              focusNode: _buttonFocusNode,
              onPressed: () {
                if (controller.isOpen) {
                  controller.close();
                } else {
                  controller.open();
                }
              },
              child: Icon(
                Icons.graphic_eq,
                color: Color(0xff5c71a8),
              ),
            );
          },
        ),
                 */
          },
          child: Container(
            // padding: EdgeInsets.symmetric(horizontal: 15),
            alignment: Alignment.center,
            child: Stack(
              children: [
                Icon(
                  Icons.notifications_outlined,
                  color: dark ? Colors.black : Colors.white,
                  // size:  30,
                ),
                Positioned(
                  // alignment: Alignment.topCenter,
                  top: 3,
                  right: 3,
                  // left: -5,
                  child: Icon(
                    Icons.circle,
                    color: Colors.red,
                    size: 10,
                  ),
                ),
              ],
            ),
          ),
        ),

        const SizedBox(
          width: 15,
        ),

        IconButton(
          onPressed: () {
            logToConsole(ApplicationView.globalKey);
            globalKey?.currentState!.openEndDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: dark ? Colors.black : Colors.white,
            size: 28,
          ),
        ),

        // SizedBox(width: 15,),
      ],
    );
  }
}














/*

import 'package:empty/core/tools/print.tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';

import '../../views/CreateCircleBottomSheet.dart';
import '../../views/application_view.dart';
import 'widget/notification_item_widget.dart';

class DefaultAppBarWidget extends StatefulWidget {
  final bool dark;
  final GlobalKey<ScaffoldState>? globalKey;
  const DefaultAppBarWidget({
    super.key,
    this.dark = false,
    required this.globalKey,
  });

  @override
  State<StatefulWidget> createState() {
    return _DefaultAppBarWidgetState();
  }
}

class _DefaultAppBarWidgetState extends State<DefaultAppBarWidget> {
  final FocusNode _buttonFocusNode = FocusNode(debugLabel: 'Menu Button');
  ShortcutRegistryEntry? _shortcutsEntry;

  Color get backgroundColor => _backgroundColor;
  Color _backgroundColor = Color(0xff5c71a8);
  set backgroundColor(Color value) {
    if (_backgroundColor != value) {
      setState(() {
        _backgroundColor = value;
      });
    }
  }

  bool get showingMessage => _showingMessage;
  bool _showingMessage = false;
  bool _isChecked = true;
  set showingMessage(bool value) {
    if (_showingMessage != value) {
      setState(() {
        _showingMessage = value;
      });
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Dispose of any previously registered shortcuts, since they are about to
    // be replaced.
    _shortcutsEntry?.dispose();
    // Collect the shortcuts from the different menu selections so that they can
    // be registered to apply to the entire app. Menus don't register their
    // shortcuts, they only display the shortcut hint text.
    //final Map<ShortcutActivator, Intent> shortcuts =
    //    <ShortcutActivator, Intent>{
    //  for (final MenuEntry item in MenuEntry.values)
    //    if (item.shortcut != null)
    //      item.shortcut!: VoidCallbackIntent(() => _activate(item)),
    //};
    // Register the shortcuts with the ShortcutRegistry so that they are
    // available to the entire application.
    //_shortcutsEntry = ShortcutRegistry.of(context).addAll(shortcuts);
  }

  @override
  void dispose() {
    _shortcutsEntry?.dispose();
    _buttonFocusNode.dispose();
    super.dispose();
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Color(0xff5c71a8);
    }
    return Color(0xff5c71a8);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MenuAnchor(
          childFocusNode: _buttonFocusNode,
          crossAxisUnconstrained: false,
          alignmentOffset: Offset(-10, 0),
          style: MenuStyle(
              shadowColor: null,
              shape: null,
              elevation: null,
              padding: MaterialStateProperty.resolveWith(
                (states) => EdgeInsets.all(00.0),
              ),
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Colors.transparent,
              )),
          menuChildren: <Widget>[
            Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Color(0xffF8FAFD),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: [
                  NotificationItemWidget(
                    username: 'NickS',
                    descriptionMessageBold: true,
                    descriptionMessage: 'Sent a video from Foodies...',
                    time: '2h',
                    hasNotification: true,
                    profile: 'assets/images/smiled_man.jpg',
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  NotificationItemWidget(
                    username: 'Jane2023',
                    descriptionMessage: 'Sent a video from Foodies...',
                    time: '14h',
                    profile: 'assets/images/woman_2.jpg',
                  ),
                ],
              ),
            )
          ],
          builder:
              (BuildContext context, MenuController controller, Widget? child) {
            return InkWell(
              focusNode: _buttonFocusNode,
              onTap: () {
                if (controller.isOpen) {
                  controller.close();
                } else {
                  controller.open();
                }
              },
              child: Container(
                // padding: EdgeInsets.symmetric(horizontal: 15),
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    Icon(
                      Icons.notifications_outlined,
                      color: widget.dark ? Colors.black : Colors.white,
                      // size:  30,
                    ),
                    Positioned(
                      // alignment: Alignment.topCenter,
                      top: 3,
                      right: 3,
                      // left: -5,
                      child: Icon(
                        Icons.circle,
                        color: Colors.red,
                        size: 10,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),

        const SizedBox(
          width: 15,
        ),

        IconButton(
          onPressed: () {
            logToConsole(ApplicationView.globalKey);
            widget.globalKey?.currentState!.openEndDrawer();
          },
          icon: Icon(
            Icons.menu,
            color: widget.dark ? Colors.black : Colors.white,
            size: 28,
          ),
        ),

        // SizedBox(width: 15,),
      ],
    );
  }
}
*/