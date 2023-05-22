import 'package:flutter/material.dart';

import '../../widget/container/page_container_widget.dart';

class ViewListingPage extends StatelessWidget {
  const ViewListingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainerWidget(
        appBarTitle: "View Listing",
        hasPadding: false,
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start),
        )));
  }
}
