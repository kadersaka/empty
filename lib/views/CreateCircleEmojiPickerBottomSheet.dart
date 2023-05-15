import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../../../../constants/app_localizations.dart';
import '../../../../constants/colors_constants.dart';
import '../../../../constants/constants.dart';
import '../../../../constants/spacing_constants.dart';
import '../../../../core/utils/image_constant.dart';

import 'package:flutter/foundation.dart' as foundation;

import '../core/utils/validator.dart';
import '../widget/custom_circle_avatar.dart';
import '../widget/gradientcontainer_widget.dart';

class CreateCircleEmojiPickerBottomSheet extends StatefulWidget {
  const CreateCircleEmojiPickerBottomSheet({Key? key}) : super(key: key);

  @override
  State<CreateCircleEmojiPickerBottomSheet> createState() =>
      _CreateCircleEmojiPickerBottomSheetState();
}

class _CreateCircleEmojiPickerBottomSheetState
    extends State<CreateCircleEmojiPickerBottomSheet> {
  get _subjectsTextFieldController => TextEditingController();
  late double _distanceToField;
  late TextfieldTagsController _controller;
  final TextEditingController _emojiController = TextEditingController();
  bool emojiShowing = false;

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

                          "BACK       ",
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
                  Text(
                     "Circle Cover",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      // color: AppColors.PRIMARY_BRAND,
                      // decoration: TextDecoration.underline,
                    ),
                  ),
                  InkWell(
                    child: Text(

                              "Next       ",
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
              Text("Emoji",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  // color: Colors.blue,
                  // decoration: TextDecoration.underline,
                ),
              ),
              SizedBox(height: 0),
              Offstage(
                offstage: emojiShowing,
                child: SizedBox(
                  height:  MediaQuery.of(context).size.height - 400,
                  child: EmojiPicker(
                    textEditingController: _emojiController,
                    onEmojiSelected: (cat,   emoji){
                      print(emoji);
                    },
                    config: Config(
                      columns: 7,
                      // Issue: https://github.com/flutter/flutter/issues/28894
                      emojiSizeMax: 32 * (foundation.defaultTargetPlatform ==  TargetPlatform.iOS  ? 1.30 : 0.8),
                      verticalSpacing: 0,
                      horizontalSpacing: 0,
                      gridPadding: EdgeInsets.zero,
                      initCategory: Category.RECENT,
                      bgColor: Colors.white,
                      indicatorColor: AppColors.PRIMARY_BRAND,
                      iconColor: Colors.grey,
                      iconColorSelected: AppColors.PRIMARY_BRAND,
                      backspaceColor: AppColors.PRIMARY_BRAND,
                      skinToneDialogBgColor: Colors.red,
                      skinToneIndicatorColor: Colors.green,
                      enableSkinTones: true,
                      showRecentsTab: true,
                      recentsLimit: 28,
                      replaceEmojiOnLimitExceed: false,
                      noRecents: const Text( 
                        'No Recents',
                        style: TextStyle(fontSize: 20, color: Colors.black26),
                        textAlign: TextAlign.center,
                      ),
                      loadingIndicator: const SizedBox.shrink(),
                      tabIndicatorAnimDuration: kTabScrollDuration,
                      categoryIcons: const CategoryIcons(),
                      buttonMode: ButtonMode.MATERIAL,
                      checkPlatformCompatibility: true,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text("Background",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  // color: Colors.blue,
                  // decoration: TextDecoration.underline,
                ),
              ),

              SizedBox(height: 10),
              Container(
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                    children: colorNames.map((colorDetails) {
                      return GradientContainerWidget(
                        colorName: "${colorDetails['name']}",
                        colors: colorDetails["color"],
                      );
                    }).toList()),
              ),

              SizedBox(height: 20),
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
              ? "${currentCount} / ${maxWords} " +"wordsLabel"
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
