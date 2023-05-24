import 'package:empty/core/tools/print.tool.dart';
import 'package:empty/views/home/bloc/home_bloc.dart';
import 'package:empty/views/inbox/views/their_offer_view.dart';
import 'package:empty/widget/container/bottom_sheet_modal_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widget/container/bottom_sheet_modal_close_container.dart';
import '../../../widget/shape/bottom_sheet_modal_shape.dart';
import '../views/offer_accept_view.dart';
import 'counter_button_widget.dart';
import 'decline_button_widget.dart';

class InboxListItemWidget extends StatelessWidget {
  final bool hasNotification;
  final String username;
  final String profile;
  final String descriptionMessage;
  final bool descriptionMessageBold;
  final String time;
  const InboxListItemWidget(
      {super.key,
      this.hasNotification = false,
      required this.username,
      required this.profile,
      required this.descriptionMessage,
      required this.time,
      this.descriptionMessageBold = false});

  @override
  Widget build(BuildContext rootContext) {
    logToConsole(BlocProvider.of<HomeBloc>(rootContext));
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: rootContext,
          elevation: 0,
          isScrollControlled: true,
          shape: roundedBottomModalSheet(),
          builder: (buildContext) => BottomSheetModalCloseContainer(
              title: "Their Offer",
              percentage: 0.5,
              child: Container(
                width: double.infinity,
                child: BlocProvider.value(
                  value: BlocProvider.of<HomeBloc>(rootContext),
                  child: TheirOfferView(),
                ),
              )),
        );
      },
      child: Padding(
          padding: EdgeInsets.only(bottom: 20.0, left: 20.0, right: 20.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14.0),
                          child: Image(
                              image: AssetImage(profile),
                              height: 28,
                              width: 28,
                              fit: BoxFit.cover),
                        ),
                        hasNotification
                            ? Positioned(
                                // alignment: Alignment.topCenter,
                                top: 1,
                                right: 1,
                                // left: -5,
                                child: Icon(
                                  Icons.circle,
                                  color: Colors.red,
                                  size: 8,
                                ),
                              )
                            : SizedBox(),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Color(0xff737A82), fontSize: 16.0),
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  )),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image(
                        image: AssetImage("assets/images/big_girl_guitar.png"),
                        height: 90,
                        width: 83,
                        fit: BoxFit.cover),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Guitar Lesson - 30 min",
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16.0),
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "The seller has until 07 Sep 2023 to accept or reject your offer",
                        //"Pharmacie de Garde: Oui",
                        textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 14.0, color: Colors.grey),
                      )
                    ],
                  )),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xffD9DFEC)),
                        child: Text(
                          "£15",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      Icon(Icons.more_horiz_sharp)
                    ],
                  ),
                ],
              )
            ],
          )),
    );
  }
}
