import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../../../../constants/app_localizations.dart';
import '../../../../constants/colors_constants.dart';
import '../../../../constants/constants.dart';
import '../../../../constants/spacing_constants.dart';
import '../../../../core/utils/image_constant.dart';

import 'package:flutter/foundation.dart' as foundation;

import '../core/utils/validator.dart';
import '../widget/custom_circle_avatar.dart';



class CreateCircleThirdPageBottomSheet extends StatefulWidget {
  const CreateCircleThirdPageBottomSheet({Key? key}) : super(key: key);

  @override
  State<CreateCircleThirdPageBottomSheet> createState() =>
      _CreateCircleThirdPageBottomSheetState();
}

class _CreateCircleThirdPageBottomSheetState extends State<CreateCircleThirdPageBottomSheet> {
  get _membersTextFieldController => TextEditingController();
  late double _distanceToField;
  late TextfieldTagsController _controller;
  final TextEditingController _emojiController = TextEditingController();
  bool emojiShowing = false;
  bool _broadcast = false;
  bool _private = false;

  @override
  void initState() {
    _controller = TextfieldTagsController();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _distanceToField = MediaQuery.of(context).size.width;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 100,
      padding: EdgeInsets.only(left: 10, bottom: 30, top: 15, right: 10),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  height: 4,
                  width: 80,
                  decoration: BoxDecoration(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    child: Text(

                          "BACK        ",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 14,
                        color: AppColors.PRIMARY_BRAND,
                        decoration: TextDecoration.underline,
                        // color: Colors.white,
                        // decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).pop();

                    },
                  ),
                  Text( "Create a Circle",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      // color: Colors.blue,
                      // decoration: TextDecoration.underline,
                    ),
                  ),
                  InkWell(
                    child: Text(
                          "                ",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 14,
                        color: AppColors.PRIMARY_BRAND,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text( "Reach a bigger audience when you broadcast to the whole University!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  // color: Colors.blue,
                  // decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 10),
              SwitchListTile(
                title: Text( "Broadcast",style: TextStyle(
                    // color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ),
                ),
                value: _broadcast,
                activeColor: Colors.white12,
                activeTrackColor: AppColors.APP_ICON_COLOR,
                inactiveTrackColor: Colors.grey,
                onChanged: (bool value) {
                  setState(() {
                    _broadcast = value;
                  });
                },
                // secondary: Icon(Icons.add),
                subtitle: Text('You can not broadcast if your circle is private.',
                  style: TextStyle(
                  color: Colors.blueGrey[600],
                ),
                ),
              ),
              SizedBox(height: 30),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Pick Members",
                  style: TextStyle(
                  // color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                 ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: _inputTextField(
                  placeholder: "Jane DOE",
                  numberOfLines: 1,
                  keyboardType: TextInputType.text,
                  maxWords: null,
                  icon: IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.black54, )),
                  // maxWords: BlocProvider.of<CreateYutuTextContentBloc>(context).maxDescription,
                  editingController: _membersTextFieldController,
                  onChanged: (t){},
                  stream: Stream.empty(),
                  // onChanged: BlocProvider.of<CreateYutuTextContentBloc>(context).descriptionChanged,
                  // stream: BlocProvider.of<CreateYutuTextContentBloc>(context).description
                ),
              ),
              SizedBox(height:40),
              SwitchListTile(
                title: Text( "Make circle private",style: TextStyle(
                  // color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                ),
                ),
                value: _private,
                activeColor: Colors.white12,
                activeTrackColor: AppColors.APP_ICON_COLOR,
                inactiveTrackColor: Colors.grey,
                onChanged: (bool value) {
                  setState(() {
                    _private = value;
                  });
                },
                // secondary: Icon(Icons.add),
                subtitle: Text('Only those you choose will be able to view this circle.',
                  style: TextStyle(
                    color: Colors.blueGrey[600],
                  ),
                ),
              ),

              // SizedBox(height: 30),
              //
              // buildContainer(
              //   context,
              //   AppLocalizations.of(context)!.translate('createcircle'),
              //   Color(0xff0880A1),
              //       () {
              //     //pickInterestView
              //     // Navigator.push(context, MaterialPageRoute(builder: (context) => UserProfileScreen()));
              //
              //     // BlocProvider.of<NavigationBloc>(context).add(NavigationEventRedirect(pushAsReplacement: false, withBottomNav: false, routePath: RoutePath.OnboardingProfileName, ));
              //         Navigator.of(context).pop();
              //         BlocProvider.of<NavigationBloc>(context).add(NavigationEventRedirect(pushAsReplacement: false, withBottomNav: false, routePath: RoutePath.CircleView, ));
              //
              //   },
              // ),

              SizedBox(height: 30),

              Center(
                child: InkWell(
                  child: Text(
                    "cancel",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 14,
                      color: AppColors.PRIMARY_BRAND,
                      decoration: TextDecoration.underline,
                      // color: Colors.white,
                      // decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: (){
                    Navigator.of(context).pop();

                  },
                ),
              ),

              SizedBox(height: 50),



            ],
          ),
        ),
      ),
    );
  }

  Widget _circleView() {
    return ListTile(
      leading: CustomCircleAvatar(
        backgroundImage: ImageConstant.img_ellipse3_136x136,
        radius: 50,
      ),
      title: Text(
        "Art",
        textAlign: TextAlign.start,
        style: TextStyle(
            // color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
      // style: ListTileStyle.drawer,
      // contentPadding: EdgeInsetsGeometry.infinity,
      subtitle: Text(
        "Joined 10.01.2023 ",
        style: TextStyle(
            // color: Colors.white
            ),
      ),
      trailing: TextButton(
        onPressed: () {},
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.star_border,
            color: Colors.grey,
          ),
        ),
      ),
      // dense: false,
      horizontalTitleGap: 0,
      minVerticalPadding: 0,
      // minLeadingWidth: 0,
    );
  }

  StreamBuilder<String> _inputTextField(
      {required String placeholder,
      required int numberOfLines,
      required TextInputType keyboardType,
      IconButton? icon,
      required int? maxWords,
      required Stream<String> stream,
      required TextEditingController editingController,
      required ValueChanged<String> onChanged}) {
    return StreamBuilder<String>(
      stream: stream,
      initialData: "",
      builder: (context, snap) {
        var currentCount =
            (snap.data == null) ? 0 : Validation().getWordCount(snap.data!);
        if (snap.data != null)
          editingController.value =
              editingController.value.copyWith(text: snap.data);

        var decoration = InputDecoration(
          suffixIcon: icon,
          fillColor: AppColors.INPUT_BACKGROUND,
          filled: true,
          hintText: placeholder,
          hintStyle: TextStyle(
            fontSize: AppSpacing.HINT_SIZE,
            fontFamily: 'Archivo',
            color: AppColors.PLACEHOLDER_TEXT,
          ),
          counterText: (maxWords != null)
              ? "${currentCount} / ${maxWords} wordsLabel"
              : null,
          counterStyle: TextStyle(
            fontSize: AppSpacing.COUNTER_SIZE,
            fontFamily: 'Poppins',
            color: AppColors.PLACEHOLDER_TEXT,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(AppSpacing.ZERO_BORDER_RADIUS)),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(
                Radius.circular(AppSpacing.ZERO_BORDER_RADIUS)),
            borderSide: BorderSide(color: Colors.grey),
          ),
          contentPadding: EdgeInsets.only(left: 10.0, top: 15.0),
          // suf
        );

        if (snap.error != null) {
          decoration = InputDecoration(
            errorText: snap.error.toString(),
            errorStyle: TextStyle(
              fontSize: AppSpacing.VALIDATION_LABEL_FONT_SIZE,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              color: AppColors.SECONDARY_COLOR,
            ),
            suffixIcon: icon,
            fillColor: AppColors.INPUT_BACKGROUND,
            filled: true,
            hintText: placeholder,
            hintStyle: TextStyle(
              fontSize: AppSpacing.HINT_SIZE,
              fontFamily: 'Archivo',
              color: AppColors.PLACEHOLDER_TEXT,
            ),
            counterStyle: TextStyle(
              fontSize: AppSpacing.COUNTER_SIZE,
              fontFamily: 'Poppins',
              color: AppColors.PLACEHOLDER_TEXT,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(AppSpacing.SMALL_BORDER_RADIUS)),
              borderSide: BorderSide(color: AppColors.INPUT_BORDER_ERROR),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                  Radius.circular(AppSpacing.SMALL_BORDER_RADIUS)),
              borderSide: BorderSide(color: AppColors.INPUT_BORDER_ERROR),
            ),
            contentPadding: EdgeInsets.only(left: 10.0, top: 15.0),
          );
        }

        return Container(
          child: TextFormField(
            keyboardAppearance: Brightness.light,
            textCapitalization: TextCapitalization.sentences,
            controller: editingController,
            onChanged: onChanged,
            // focusNode: _focusNode,
            keyboardType: keyboardType,
            maxLines: numberOfLines,
            style: TextStyle(
              fontSize: 12.0,
              fontFamily: 'Archivo',
              fontWeight: FontWeight.w600,
              color: AppColors.TEXT_PRIMARY,
            ),
            decoration: decoration,
          ),
        );
      },
    );
  }
}
