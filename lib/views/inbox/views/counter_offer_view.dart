import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/tools/print.tool.dart';
import '../../../widget/container/bottom_sheet_modal_container.dart';
import '../../home/bloc/home_bloc.dart';
import '../../view_listing/views/offer_sent_view.dart';

class CounterOfferView extends StatelessWidget {
  const CounterOfferView({super.key});

  @override
  Widget build(BuildContext rootContext) {
    logToConsole(BlocProvider.of<HomeBloc>(rootContext));
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Your New Offer",
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                onChanged: (value) {
                  logToConsole(value);
                  /*if (value.isNotEmpty) {
                setState(() {
                  hasError = value.length < 8;
                });
              } else {
                setState(() {
                  hasError = false;
                });
              }*/
                },
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
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
                height: 20.0,
              ),
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
                            title: "",
                            titleSize: 24,
                            child: BlocProvider.value(
                              value: BlocProvider.of<HomeBloc>(rootContext),
                              child: OfferSentView(),
                            ));
                      },
                    );
                  },
                  child: const Text(
                    "Send Offer",
                    style: TextStyle(fontSize: 17),
                  )),
            ],
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      width: 2, color: Color.fromARGB(116, 115, 122, 130)))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Clear",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.normal),
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text("Done",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.normal)))
            ],
          ),
        )
      ],
    );
  }
}
