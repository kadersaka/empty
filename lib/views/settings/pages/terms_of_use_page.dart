import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/tools/print.tool.dart';
import '../../../widget/app_logo_rounded_widget.dart';
import '../../home/bloc/home_bloc.dart';
import '../widget/terms_of_use_header_widget.dart';

class TermsOfUserPage extends StatelessWidget {
  const TermsOfUserPage({super.key});

  @override
  Widget build(BuildContext rootContext) {
    logToConsole("ON SETTINGS Terms of use PAGE");
    logToConsole(BlocProvider.of<HomeBloc>(rootContext));

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          TermsOfUserHeaderWidget(),
          Expanded(
              child: Container(
            color: Color(0xffe9edf5),
            child: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.only(
                      right: 20.0, left: 20.0, top: 10.0, bottom: 10.0),
                  child: Row(children: [
                    AppLogoRoundedWidget(),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text(
                      "Help Center",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    )
                  ]),
                ),
                Container(
                  color: Colors.white,
                  width: double.infinity,
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Terms Policies",
                        style: TextStyle(fontSize: 12.0),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Terms of Use",
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Lörem ipsum klimatvänlig anas ibel. Sharenting "
                        "katologi homortad doxa nylig. Megatik intraligt, "
                        "i plafängen vebegt. Mikropesade brorsantrick, "
                        "kavis, krosm tregins. Bende teravär derände. Nesed "
                        "remani polyning oaktat onat. Petiras restat. "
                        "Polyment dill även om soment förortare i ultrakan. "
                        "Vakuktig kaföv. Nitrevis opeskade pekuligt, och tett. "
                        "Dok. ",
                        textAlign: TextAlign.justify,
                        style:
                            TextStyle(fontSize: 12.0, color: Color(0xff737A82)),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Lörem ipsum klimatvänlig anas ibel. Sharenting "
                        "katologi homortad doxa nylig. Megatik intraligt, "
                        "i plafängen vebegt. Mikropesade brorsantrick, "
                        "kavis, krosm tregins. Bende teravär derände. Nesed "
                        "remani polyning oaktat onat. Petiras restat. "
                        "Polyment dill även om soment förortare i ultrakan. "
                        "Vakuktig kaföv. Nitrevis opeskade pekuligt, och tett. "
                        "Dok. ",
                        textAlign: TextAlign.justify,
                        style:
                            TextStyle(fontSize: 12.0, color: Color(0xff737A82)),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Lörem ipsum klimatvänlig anas ibel. Sharenting "
                        "katologi homortad doxa nylig. Megatik intraligt, "
                        "i plafängen vebegt. Mikropesade brorsantrick, "
                        "kavis, krosm tregins. Bende teravär derände. Nesed "
                        "remani polyning oaktat onat. Petiras restat. "
                        "Polyment dill även om soment förortare i ultrakan. "
                        "Vakuktig kaföv. Nitrevis opeskade pekuligt, och tett. "
                        "Dok. ",
                        textAlign: TextAlign.justify,
                        style:
                            TextStyle(fontSize: 12.0, color: Color(0xff737A82)),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "Lörem ipsum klimatvänlig anas ibel. Sharenting "
                        "katologi homortad doxa nylig. Megatik intraligt, "
                        "i plafängen vebegt. Mikropesade brorsantrick, "
                        "kavis, krosm tregins. Bende teravär derände. Nesed "
                        "remani polyning oaktat onat. Petiras restat. "
                        "Polyment dill även om soment förortare i ultrakan. "
                        "Vakuktig kaföv. Nitrevis opeskade pekuligt, och tett. "
                        "Dok. ",
                        textAlign: TextAlign.justify,
                        style:
                            TextStyle(fontSize: 12.0, color: Color(0xff737A82)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                //Bottom Content
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Was this helpful?",
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //TODO move this into a widget
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff0880A1),
                            shape: RoundedRectangleBorder(
                              // Change your radius here
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 15.0),
                            minimumSize: const Size(100, 15)),
                        onPressed: () {
                          //
                        },
                        child: const Text(
                          "Yes",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      width: 20.0,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff0880A1),
                            shape: RoundedRectangleBorder(
                              // Change your radius here
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 50.0, vertical: 15.0),
                            minimumSize: const Size(100, 15)),
                        onPressed: () {
                          //
                        },
                        child: const Text(
                          "No",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
                SizedBox(
                  width: 20.0,
                ),
              ]),
            ),
          ))
        ],
      )),
    );
  }
}
