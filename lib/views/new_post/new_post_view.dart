import 'dart:ui';

import 'package:empty/core/tools/print.tool.dart';
import 'package:empty/core/utils/image_constant.dart';
import 'package:empty/views/new_post/bloc/new_post_bloc.dart';
import 'package:empty/widget/location/locations_view.dart';
import 'package:empty/views/new_post/widget/category_widget.dart';
import 'package:empty/widget/text/underline_text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';

import '../../widget/container/bottom_sheet_modal_container.dart';
import '../../widget/input/default_text_input._widget.dart';
import '../../widget/input/icon_text_input_widget.dart';
import '../../widget/input/text_area._widget.dart';
import '../../widget/search/search_input_widget.dart';
import '../../widget/shape/bottom_sheet_modal_shape.dart';
import '../../widget/text/text_header_one_widget.dart';
import '../../widget/text/text_label_widget.dart';
import '../../widget/form/broadcast_option_widget.dart';
import 'widget/category_tooltip_content.dart';
import '../../widget/custom_tag_widget.dart';

class NewPostView extends StatefulWidget {
  const NewPostView({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewPostViewState();
  }
}

class _NewPostViewState extends State<NewPostView> {
  final tooltipController = JustTheController();

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
    super.initState();
  }

  @override
  Widget build(BuildContext rootContext) {
    return Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  ImageConstant.imgKalvisualsqsd,
                  fit: BoxFit.cover,
                  width: 137,
                  height: 150,
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextLabelWidget(
                        text: "Pick a category",
                        isRequired: true,
                      ),
                      GestureDetector(
                        onTap: () {
                          tooltipController.showTooltip();
                        },
                        child: Icon(Icons.info_outline),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      JustTheTooltip(
                        controller: tooltipController,
                        backgroundColor: Color(0x992B3042),
                        child: CategoryWidget(
                          text: "Tools & Tips",
                        ),
                        content: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: CategoryTooltipContent(),
                        ),
                      ),
                      CategoryWidget(
                        text: "My Life",
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryWidget(
                        text: "Teammates",
                      ),
                      CategoryWidget(
                        text: "Events",
                      )
                    ],
                  ),
                ],
              ))
            ],
          ),
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
            placeholder: "Tell us about this...",
          ),
          SizedBox(
            height: 10.0,
          ),
          BlocBuilder<NewPostBloc, NewPostState>(
            builder: (context, state) {
              logToConsole("Location changed ${state.selectedLocation} ");

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
                      builder: (buildContext) => BottomSheetModalContainer(
                            title: "Location",
                            header: SearchInputWidget(),
                            child: LocationsView(
                              onItemSelected: (item) {
                                BlocProvider.of<NewPostBloc>(rootContext)
                                    .add(NewPostLocationSelectedEvent(item));
                              },
                            ),
                          ));
                },
              );
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          //TODO create a date input widget
          IconInputWidget(
            placeholder: "Date",
            readOnly: true,
            iconData: Icons.calendar_month_outlined,
            onTap: () async {
              final DateTime? selected = await showDatePicker(
                  context: rootContext,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime(DateTime.now().year + 1));

              //TODO use bloc to save and updat ehte state
            },
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
            height: 10.0,
          ),
          BroadcastOptionSwitcherWidget(
            title: "Broadcast to whole university",
            text: "*Reach a bigger audience when you broadcast!",
          ),

          SizedBox(
            height: 20.0,
          ),
          TextLabelWidget(
            text: "Post in a circle?",
            isRequired: false,
          ),
          SizedBox(
            height: 10.0,
          ),
          IconInputWidget(
            placeholder: "Search",
            iconData: Icons.search,
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
                                horizontal: 70.0, vertical: 20.0),
                            minimumSize: const Size(100, 50)),
                        onPressed: () {},
                        child: const Text(
                          "Share",
                          style: TextStyle(fontSize: 17),
                        )),
                    SizedBox(
                      height: 25.0,
                    ),
                    UnderlineTextButton(text: "Cancel"),
                  ])),

          //TODO move into a component
          SizedBox(
            height: WidgetsBinding.instance.window.viewInsets.bottom > 0.0
                ? 300
                : 0,
          )
        ]));
  }
}
