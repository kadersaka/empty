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
            showModalBottomSheet(
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
                builder: (context) => const CreateCircleBottomSheet());
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
