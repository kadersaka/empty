import 'package:empty/core/tools/print.tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../views/new_post/bloc/new_post_bloc.dart';
import 'location_item_widget.dart';

class LocationsView extends StatelessWidget {
  const LocationsView({super.key});

  @override
  Widget build(BuildContext rootContext) {
    logToConsole(BlocProvider.of<NewPostBloc>(rootContext));

    return Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Recent",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.grey),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            LocationItemWidget(onTap: (String data) {
              BlocProvider.of<NewPostBloc>(rootContext)
                  .add(NewPostLocationSelectedEvent(data));
                  Navigator.pop(rootContext);
            }),
            LocationItemWidget(onTap: (String data) {})
          ],
        ));
  }
}
