import 'dart:ui';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:empty/core/tools/print.tool.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widget/container/bottom_sheet_modal_container.dart';
import '../../../widget/text/underline_text_button_widget.dart';
import '../../home/bloc/home_bloc.dart';
import 'offer_sent_view.dart';

class ViewListingMakeOfferView extends StatefulWidget {
  const ViewListingMakeOfferView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ViewListingMakeOfferViewState();
  }
}

class _ViewListingMakeOfferViewState extends State<ViewListingMakeOfferView> {
  bool hasError = false;

  @override
  Widget build(BuildContext rootContext) {
    return SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                Card(
                  elevation: 3,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.history,
                          size: 24,
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Heads up! Offering isn’t buying",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold)),
                            Text(
                                "If the seller accepts, you’ll have 48 hours to buy the item at your offered price.",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey))
                          ],
                        ))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(33),
                      child: Image.asset(
                        "assets/images/girl_with_guitar_small.png",
                        height: 67,
                        width: 67,
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Guitar Lesson - 30 min",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text("£15",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: 10.0,
                        ),
                        UnderlineTextButton(text: "View Detail")
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Your offer",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                  ],
                ),
                TextFormField(
                  onChanged: (value) {
                    logToConsole(value);
                    if (value.isNotEmpty) {
                      setState(() {
                        hasError = value.length < 8;
                      });
                    } else {
                      setState(() {
                        hasError = false;
                      });
                    }
                  },
                  cursorColor: Colors.black,
                  style: TextStyle(color: hasError ? Colors.red : Colors.black),
                  inputFormatters: [
                    CurrencyTextInputFormatter(
                        locale: 'uk',
                        decimalDigits: 2,
                        symbol: '£',
                        enableNegative: false
                        //symbol: '£',
                        ),
                  ],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    hintText: "£15.00",
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    isDense: true,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: !hasError
                          ? Text(
                              "Tip: Offers 10% or more of the listing price are more likely to be accepted",
                              style: TextStyle(
                                  fontSize: 14.0, color: Color(0xff737A82)),
                            )
                          : Text(
                              "Oops! The minimum requirement is £15. Try again",
                              style:
                                  TextStyle(fontSize: 14.0, color: Colors.red),
                            ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                    width: double.infinity,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xff0880A1),
                                  shape: RoundedRectangleBorder(
                                    // Change your radius here
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 70.0, vertical: 15.0),
                                  minimumSize: const Size(303, 40)),
                              onPressed: () {
                                //
                                showModalBottomSheet(
                                  context: context,
                                  elevation: 0,
                                  backgroundColor: Colors.white,
                                  isScrollControlled: true,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15))),
                                  builder: (context) {
                                    return BottomSheetModalContainer(
                                        title: "",
                                        titleSize: 24,
                                        child: BlocProvider.value(
                                          value: BlocProvider.of<HomeBloc>(
                                              rootContext),
                                          child: OfferSentView(),
                                        ));
                                  },
                                );
                              },
                              child: const Text(
                                "Send Offer",
                                style: TextStyle(fontSize: 17),
                              ))
                        ]))
              ],
            )));
    ;
  }
}
