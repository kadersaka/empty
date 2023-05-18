import 'package:empty/core/tools/print.tool.dart';
import 'package:empty/core/utils/image_constant.dart';
import 'package:empty/views/new_post/bloc/new_post_bloc.dart';
import 'package:empty/views/new_post/views/locations_view.dart';
import 'package:empty/views/new_post/widget/category_widget.dart';
import 'package:empty/widget/text/underline_text_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../widget/container/bottom_sheet_modal_container.dart';
import '../../widget/input/default_text_input._widget.dart';
import '../../widget/input/icon_text_input_widget.dart';
import '../../widget/input/text_area._widget.dart';
import '../../widget/search/search_input_widget.dart';
import '../../widget/shape/bottom_sheet_modal_shape.dart';
import '../../widget/text/text_header_one_widget.dart';
import '../../widget/text/text_label_widget.dart';
import 'widget/broadcast_option_widget.dart';
import 'widget/tag_widget.dart';

class NewPostView extends StatelessWidget {
  const NewPostView({super.key});

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
              const Expanded(
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
                      Icon(Icons.info_outline)
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryWidget(
                        text: "Tools & Tips",
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
                          child: BlocProvider.value(
                            value: BlocProvider.of<NewPostBloc>(rootContext),
                            child: LocationsView(),
                          )));
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
          BroadcastOptionSwitcherWidget(),

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
