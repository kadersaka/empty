import 'dart:ui';

import 'package:empty/views/home/bloc/home_bloc.dart';
import 'package:empty/widget/text/underline_text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';

import '../../core/tools/print.tool.dart';
import '../../widget/container/bottom_sheet_modal_container.dart';
import '../../widget/container/page_container_widget.dart';
import '../../widget/form/broadcast_option_widget.dart';
import '../../widget/form/form_select_widget.dart';
import '../../widget/form/price_form_input_widget.dart';
import '../../widget/input/default_text_input._widget.dart';
import '../../widget/input/icon_text_input_widget.dart';
import '../../widget/input/text_area._widget.dart';
import '../../widget/location/locations_view.dart';
import '../../widget/search/search_input_widget.dart';
import '../../widget/shape/bottom_sheet_modal_shape.dart';
import '../../widget/tag/tags_container_widget.dart';
import '../../widget/text/text_label_widget.dart';
import 'bloc/new_listing_bloc.dart';
import 'widget/marketplace_tooltip_content.dart';
import 'widget/post_new_listing_widget.dart';
import 'widget/simple_text_switcher.dart';
import 'widget/text_with_switcher.dart';

class NewListingPage extends StatefulWidget {
  const NewListingPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewListingPageState();
  }
}

class _NewListingPageState extends State<NewListingPage> {
  final tooltipController = JustTheController();
  late bool isBroadcasting;
  late bool isCreatingNewCircle;
  late bool isMakingCirclePrivate;
  late bool hasMinimumOffer;
  late bool showMinimumOfferPriceInput;

  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // Programatically display tooltip after two seconds
    Future.delayed(const Duration(seconds: 2), () {
      try {
        tooltipController.showTooltip(immediately: false);
      } catch (e) {
        logToConsole(e);
      }
    });

    tooltipController.addListener(() {
      // Prints the enum value of [TooltipStatus.isShowing] or [TooltipStatus.isHiding]
      print('controller: ${tooltipController.value}');
    });

    isCreatingNewCircle = false;
    isMakingCirclePrivate = false;
    isBroadcasting = false;
    hasMinimumOffer = false;
    showMinimumOfferPriceInput = false;
    super.initState();
  }

  @override
  void dispose() {
    tooltipController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext rootContext) {
    logToConsole(BlocProvider.of<HomeBloc>(rootContext));
    return PageContainerWidget(
        appBarTitle: "New Listing",
        hasPadding: false,
        globalKey: _scaffoldKey,
        child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 100),
                        child: JustTheTooltip(
                          controller: tooltipController,
                          margin: EdgeInsets.all(20.0),
                          backgroundColor: Color(0x992B3042),
                          child: GestureDetector(
                            onTap: () {
                              tooltipController.showTooltip();
                            },
                            child: SizedBox(
                              child: Text(""),
                            ),
                          ),
                          content: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 1, sigmaY: 1),
                                child: MarketplaceTooltipContent()),
                          ),
                        ),
                      ),
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
                            readOnly: true,
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
                                        child: LocationsView(
                                          onItemSelected: (item) {
                                            BlocProvider.of<NewListingBloc>(
                                                    rootContext)
                                                .add(
                                                    NewListingLocationSelectedEvent(
                                                        item));
                                          },
                                        ),
                                      ));
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
                      SimpleTextSwitcherWidget(
                          text: "Must meet minimum offer",
                          onChanged: (value) {
                            setState(() {
                              hasMinimumOffer = value;

                              //always not show the price input if value changed
                              showMinimumOfferPriceInput = false;
                            });
                          }),
                      SizedBox(
                        height: 10.0,
                      ),
                      hasMinimumOffer
                          ? showMinimumOfferPriceInput
                              ? PriceFromInputWidget(
                                  placeholder: '',
                                )
                              : DefaultTextInputWidget(
                                  placeholder: "What’s your minimum offer?  ",
                                  onTap: () {
                                    setState(() {
                                      showMinimumOfferPriceInput = true;
                                    });
                                  },
                                )
                          : SizedBox(),
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
                        maxLines: 40,
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
                      TagsContainerWidget(
                        items: ["Music", "Lessons", "Guitar"],
                        onAddTap: () {},
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
                        isOn: isBroadcasting,
                        onChanged: (value) {
                          logToConsole(value);
                          setState(() {
                            isBroadcasting = value;
                          });
                        },
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      isBroadcasting
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextLabelWidget(
                                  text: "Post in a circle?",
                                  isRequired: true,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                FormSelectWidget()
                              ],
                            )
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TextLabelWidget(
                                  text: "What circle do you want to post in?",
                                  isRequired: true,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                IconInputWidget(
                                  placeholder: "Select",
                                  iconData: Icons.keyboard_arrow_down_outlined,
                                ),
                              ],
                            ),

                      //FormSelectWidget(),
                      SizedBox(
                        height: 20.0,
                      ),
                      SimpleTextSwitcherWidget(
                        text: "Create a new circle for this listing.",
                        fontSize: 16.0,
                        bold: true,
                        isOn: isCreatingNewCircle,
                        onChanged: (value) {
                          logToConsole(value);
                          setState(() {
                            isCreatingNewCircle = value;
                          });
                        },
                      ),
                      isCreatingNewCircle
                          //[START] CREATING NEW CIRCLE
                          ? Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  TextLabelWidget(
                                    text: "What is the name of your circle?",
                                    isRequired: true,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  DefaultTextInputWidget(placeholder: ""),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  TextWithSwitcherWidget(
                                    text: "Make circle private",
                                    subText:
                                        "*Only those you choose will be able to view this circle.",
                                    fontSize: 16.0,
                                    bold: true,
                                    isOn: isMakingCirclePrivate,
                                    onChanged: (value) {
                                      logToConsole(value);
                                      setState(() {
                                        isMakingCirclePrivate = value;
                                      });
                                    },
                                  ),
                                  SizedBox(
                                    height: 30.0,
                                  ),
                                  TextLabelWidget(
                                    text: "Add a cover  for your circle.",
                                    isRequired: true,
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 90,
                                        height: 90,
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            border: Border.all(
                                                color: Color(0xffd9d9d9)),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(45))),
                                        child: Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Icon(Icons.add_circle_outline,
                                                  color: Color(0xff737a82))
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 30.0,
                                      ),
                                      Column(
                                        children: [
                                          UnderlineTextButton(
                                              text: "Add a Photo"),
                                          SizedBox(
                                            height: 30.0,
                                          ),
                                          UnderlineTextButton(
                                              text: "Pick an Emoji"),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  TextLabelWidget(
                                    text: "Pick Members",
                                    isRequired: true,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  IconInputWidget(
                                    placeholder: "Select",
                                    iconData: Icons.search,
                                  ),
                                  SizedBox(
                                    height: 75.0,
                                  ),
                                ],
                              ),
                            )
                          : SizedBox(),
                      //[END] CREATING NEW CIRCLE
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
                                          return BlocProvider.value(
                                            value: BlocProvider.of<HomeBloc>(
                                                rootContext),
                                            child: PostNewListingWidget(),
                                          );
                                        },
                                      );
                                    },
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
