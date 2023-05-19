import 'package:empty/core/tools/print.tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../views/new_post/bloc/new_post_bloc.dart';
import 'location_item_widget.dart';

class LocationsView extends StatelessWidget {
  final Function onItemSelected;
  const LocationsView({super.key, required this.onItemSelected});

  @override
  Widget build(BuildContext rootContext) {
    //logToConsole(BlocProvider.of<NewPostBloc>(rootContext));

    return Padding(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        child: Column(
          children: [
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Text(
                    "Recent",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.grey),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            LocationItemWidget(onTap: (String data) {
              onItemSelected(data);
              Navigator.pop(rootContext);
            }),
            LocationItemWidget(onTap: (String data) {})
          ],
        ));
  }
}
