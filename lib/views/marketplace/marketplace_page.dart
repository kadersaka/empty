import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/tools/print.tool.dart';
import '../../widget/container/page_container_widget.dart';
import '../../widget/search/search_input_widget.dart';
import '../home/bloc/home_bloc.dart';
import 'widget/marketplace_categories_container.dart';
import 'widget/martketplace_item_widget.dart';
import 'package:flutter/services.dart';

class MarketplacePage extends StatefulWidget {
  MarketplacePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MarketplacePageState();
  }
}

class _MarketplacePageState extends State<MarketplacePage> {
  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext rootContext) {
    //logToConsole(BlocProvider.of<HomeBloc>(rootContext));
    return PageContainerWidget(
      appBarTitle: "Marketplace",
      hasPadding: false,
      globalKey: _scaffoldKey,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.all(20.0), child: SearchInputWidget()),
          Padding(
              padding: EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 15.0, bottom: 20.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff0880A1),
                      shape: RoundedRectangleBorder(
                        // Change your radius here
                        borderRadius: BorderRadius.circular(30),
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 70.0, vertical: 15.0),
                      minimumSize: const Size(303, 40)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add),
                      SizedBox(
                        width: 10.0,
                      ),
                      const Text(
                        "Add Listing",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      )
                    ],
                  ))),
          Padding(
            padding: EdgeInsets.only(left: 0.0, top: 10.0, bottom: 10.0),
            child: InkWell(
              child: MarketplaceCategoriesContainer(),
            ),
          ),
          SizedBox(
            height: 400.0,
            child: GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 2,
              childAspectRatio: (137 / 200),
              mainAxisSpacing: 10,

              // Generate 100 widgets that display their index in the List.
              children: List.generate(4, (index) {
                return UnconstrainedBox(
                  child: InkWell(
                    onTap: () {
                      BlocProvider.of<HomeBloc>(context).add(
                          NavigateAppToPageEvent(
                              NavigationPageEnum.viewListing));
                    },
                    child: MarketplaceItemWidget(),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
