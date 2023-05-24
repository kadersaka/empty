import 'package:empty/core/tools/print.tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widget/container/bottom_sheet_modal_container.dart';
import '../../home/bloc/home_bloc.dart';
import '../widget/counter_button_widget.dart';
import '../widget/decline_button_widget.dart';
import 'offer_accept_view.dart';

class TheirOfferView extends StatelessWidget {
  @override
  Widget build(BuildContext rootContext) {
    logToConsole(BlocProvider.of<HomeBloc>(rootContext));
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                    image: AssetImage("assets/images/big_girl_guitar.png"),
                    height: 137,
                    width: 116,
                    fit: BoxFit.cover),
              ),
              SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Guitar Lesson - 30 min",
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                        fontSize: 16.0, color: Color(0xff737A82)),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "£15",
                    //"Pharmacie de Garde: Oui",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff0880A1),
                  shape: RoundedRectangleBorder(
                    // Change your radius here
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 70.0, vertical: 15.0),
                  minimumSize: const Size(303, 40)),
              onPressed: () {
                //
                showModalBottomSheet(
                  context: rootContext,
                  elevation: 0,
                  backgroundColor: Colors.white,
                  isScrollControlled: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15))),
                  builder: (context) {
                    return BottomSheetModalContainer(
                      child: OfferAcceptView(),
                      title: "Nice",
                      titleSize: 24.0,
                      hasCancel: false,
                    );
                    /*return BlocProvider.value(
                                            value: BlocProvider.of<HomeBloc>(
                                                rootContext),
                                            child: PostNewListingWidget(),
                                          );*/
                  },
                );
              },
              child: const Text(
                "Accept",
                style: TextStyle(fontSize: 17),
              )),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CounterButtonWidget(),
              SizedBox(
                width: 15.0,
              ),
              DeclineButtonWidget()
            ],
          )
        ],
      ),
    );
  }
}
