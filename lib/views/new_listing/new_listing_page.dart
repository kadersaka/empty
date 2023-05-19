import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/tools/print.tool.dart';
import '../../widget/container/bottom_sheet_modal_container.dart';
import '../../widget/container/page_container_widget.dart';
import '../../widget/container/secondary_page_container_widget.dart';
import '../../widget/form/broadcast_option_widget.dart';
import '../../widget/form/price_form_input_widget.dart';
import '../../widget/input/default_text_input._widget.dart';
import '../../widget/input/icon_text_input_widget.dart';
import '../../widget/input/text_area._widget.dart';
import '../../widget/location/locations_view.dart';
import '../../widget/search/search_input_widget.dart';
import '../../widget/shape/bottom_sheet_modal_shape.dart';
import '../../widget/text/text_label_widget.dart';
import '../../widget/custom_tag_widget.dart';
import 'bloc/new_listing_bloc.dart';
import 'widget/simple_text_switcher.dart';

class NewListingPage extends StatefulWidget {
  const NewListingPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewListingPageState();
  }
}

class _NewListingPageState extends State<NewListingPage> {
  @override
  Widget build(BuildContext rootContext) {
    return SecondaryPageContainerWidget(
        appBarTitle: "New Listing",
        hasPadding: true,
        child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 144,
                            height: 131,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Color(0xffd9d9d9)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Add Video",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color: Color(0xff737a82)),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Icon(Icons.add_circle_outline,
                                      color: Color(0xff737a82))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextLabelWidget(
                        text: "What are you listing?",
                        isRequired: true,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      DefaultTextInputWidget(placeholder: ""),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextLabelWidget(
                        text: "Location",
                        isRequired: true,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      BlocBuilder<NewListingBloc, NewListingState>(
                        builder: (context, state) {
                          logToConsole(
                              "Location changed ${state.selectedLocation} ");

                          return IconInputWidget(
                            placeholder: "Location",
                            iconData: Icons.place_outlined,
                            value: state.selectedLocation,
                            onTap: () {
                              //TODO show bottom sheet modal
                              showModalBottomSheet(
                                  context: rootContext,
                                  elevation: 0,
                                  isScrollControlled: true,
                                  shape: roundedBottomModalSheet(),
                                  builder: (buildContext) =>
                                      BottomSheetModalContainer(
                                          title: "Location",
                                          header: SearchInputWidget(),
                                          child: BlocProvider.value(
                                            value:
                                                BlocProvider.of<NewListingBloc>(
                                                    rootContext),
                                            child: LocationsView(),
                                          )));
                            },
                          );
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextLabelWidget(
                        text: "Price",
                        isRequired: true,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      PriceFromInputWidget(
                        placeholder: '',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SimpleTextSwitcherWidget(text: "Must meet minimum offer"),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextLabelWidget(
                        text: "Description",
                        isRequired: true,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextAreaWidget(
                        placeholder: "Tell us about this listing...",
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextLabelWidget(
                        text: "Tags",
                        isRequired: true,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: [
                          CustomTagChip(
                            text: "Add",
                            icon: Icons.add,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                          "Reach a bigger audience when you broadcast to the whole University!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 20.0,
                      ),
                      BroadcastOptionSwitcherWidget(
                        text:
                            "*You can not broadcast if your circle is private.",
                        title: 'Broadcast',
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      TextLabelWidget(
                        text: "What circle do you want to post in?",
                        isRequired: true,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      DefaultTextInputWidget(placeholder: "Select"),
                      SizedBox(
                        height: 20.0,
                      ),
                      SimpleTextSwitcherWidget(
                          text: "Create a new circle for this listing.",
                          fontSize: 16.0,
                          bold: true),
                      SizedBox(
                        height: 50.0,
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
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 70.0, vertical: 20.0),
                                        minimumSize: const Size(303, 40)),
                                    onPressed: () {},
                                    child: const Text(
                                      "Publish",
                                      style: TextStyle(fontSize: 17),
                                    ))
                              ])),
                      SizedBox(
                        height: 50.0,
                      ),
                    ]))));
  }
}
