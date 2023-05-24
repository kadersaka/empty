import 'package:empty/core/tools/print.tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widget/container/bottom_sheet_modal_close_container.dart';
import '../../../widget/shape/bottom_sheet_modal_shape.dart';
import '../../home/bloc/home_bloc.dart';
import '../views/counter_offer_view.dart';

class CounterButtonWidget extends StatelessWidget {
  const CounterButtonWidget({super.key});

  @override
  Widget build(BuildContext rootContext) {
    logToConsole(BlocProvider.of<HomeBloc>(rootContext));
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: InkWell(
        onTap: () {
          showModalBottomSheet(
            context: rootContext,
            elevation: 0,
            isScrollControlled: true,
            shape: roundedBottomModalSheet(),
            builder: (buildContext) => BottomSheetModalCloseContainer(
                title: "Counter Offer",
                percentage: 0.6,
                child: Container(
                  width: double.infinity,
                  child: BlocProvider.value(
                    value: BlocProvider.of<HomeBloc>(rootContext),
                    child: CounterOfferView(),
                  ),
                )),
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.white, width: 3),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              boxShadow: [
                BoxShadow(
                  color: Color(0xffDDDDDD),
                  blurRadius: 6.0, // soften the shadow
                  spreadRadius: 2.0, //extend the shadow
                  offset: Offset(
                    0.0, // Move to right 5  horizontally
                    5.0, // Move to bottom 5 Vertically
                  ),
                )
              ]),
          child: Text(
            "Counter",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Color(0xff0880A1)),
          ),
        ),
      ),
    );
  }
}
