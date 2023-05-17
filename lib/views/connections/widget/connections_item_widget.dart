import 'dart:math';

import 'package:empty/core/tools/print.tool.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/default_dialog.tools.dart';
import 'connections_result_item_foreground_widget.dart';

class ConnectionItemWidget extends StatefulWidget {
  const ConnectionItemWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ConnectionItemWidgetState();
  }
}

class _ConnectionItemWidgetState extends State<ConnectionItemWidget> {
  bool _dialogShown = false;
  @override
  Widget build(BuildContext context) {
    return Dismissible(
        key: Key("Key-${Random.secure().nextInt(100) + 10}"),
        background: Container(
            color: Colors.yellow,
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.warning_amber_rounded,
                    size: 40,
                  ),
                )
              ],
            )),
        secondaryBackground: Container(
            color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Icon(
                    Icons.person_remove_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                )
              ],
            )),
        confirmDismiss: (direction) async {
          return false;
        },
        onDismissed: (direction) {
          if (direction == DismissDirection.startToEnd) {
            logToConsole("Start to End");
          }
        },
        onUpdate: (details) {
          logToConsole(details);
          logToConsole(details.progress);
          if (details.progress > 0.20) {
            logToConsole("Showing Dialog to confirm action");

            if (_dialogShown == false) {
              _dialogShown = true;
              Future.delayed(Duration(seconds: 1), () {
                displayDialogMessage(
                    context,
                    "Deconection",
                    details.direction == DismissDirection.startToEnd ?
                     "Are you sure you want to block this person?" :
                     "Are you sure you want to remove this person?",
                    details.direction == DismissDirection.startToEnd ?
                    "Yes, Block":
                    "Yes, Remove", () {
                  _dialogShown = false;
                });
              });
            }
          }
        },
        child: ConnectionsResultItemForegroundWidget());
  }
}
