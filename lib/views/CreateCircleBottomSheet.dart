import 'package:flutter/material.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../../../../constants/app_localizations.dart';
import '../../../../constants/colors_constants.dart';
import '../../../../constants/spacing_constants.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/validator.dart';
import '../widget/custom_circle_avatar.dart';
import 'CreateCircleEmojiPickerBottomSheet.dart';
import 'CreateCircleThirdPageBottomSheet.dart';

class CreateCircleBottomSheet extends StatefulWidget {
  const CreateCircleBottomSheet({Key? key}) : super(key: key);

  @override
  State<CreateCircleBottomSheet> createState() => _CreateCircleBottomSheetState();
}

class _CreateCircleBottomSheetState extends State<CreateCircleBottomSheet> {
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
                  decoration: BoxDecoration(
                      color: Colors.grey
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("                 ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white,
                      // decoration: TextDecoration.underline,
                    ),
                  ),
                  Text("Create a Circle",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      // color: Colors.blue,
                      // decoration: TextDecoration.underline,
                    ),
                  ),
                  InkWell(
                    child: Text(
                      "Next       ",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 14,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    onTap: (){
                      Navigator.of(context).pop();

                      showModalBottomSheet(
                          context: context,
                          elevation: 0,
                          backgroundColor: Colors.white,
                          isScrollControlled: true,

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)
                              )
                          ),
                          /*
                          builder: (context) => BlocProvider<CreateBottomSheetBloc>(
                            lazy: true,
                            create: (blockContext) => CreateBottomSheetBloc(navigationBloc: BlocProvider.of<NavigationBloc>(context)),
                            child: CreateBottomSheet(),
                          ),
                          */
                          builder: (context) => CreateCircleThirdPageBottomSheet()
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset("assets/images/p5.png",width: 50, height: 50,),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "Circles allow you to share interests, hobbies or businesses with others.",
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              RichText(
                overflow: TextOverflow.clip,
                textAlign: TextAlign.end,
                // textDirection: TextDirection.rtl,
                softWrap: true,
                maxLines: 1,
                textScaleFactor: 1,
                text: TextSpan(
                  text: "Add a cover for your circle. ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.APP_ICON_COLOR
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                        text: ' *', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold,)),
                  ],
                ),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.grey,
                        width: 2.0,
                      ),
                    ),
                    alignment: Alignment.center,
                    // color: ,
                    child: Icon(Icons.add_circle_outline, color: Colors.grey,  size: 40,),
                  ),

                  SizedBox(width: 30),

                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                           "Add a Photo",
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 14,
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),

                        SizedBox(height: 60,),

                        InkWell(
                          child: Text(
                            "Pick an Emoji",
                            style: TextStyle(
                              fontWeight: FontWeight.w200,
                              fontSize: 14,
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          onTap: (){
                            // Navigator.of(context).pop();
                            showModalBottomSheet(
                                context: context,
                                elevation: 0,
                                backgroundColor: Colors.white,
                                isScrollControlled: true,

                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        topRight: Radius.circular(15)
                                    )
                                ),
                                /*
                          builder: (context) => BlocProvider<CreateBottomSheetBloc>(
                            lazy: true,
                            create: (blockContext) => CreateBottomSheetBloc(navigationBloc: BlocProvider.of<NavigationBloc>(context)),
                            child: CreateBottomSheet(),
                          ),
                          */
                                builder: (context) => CreateCircleEmojiPickerBottomSheet()
                            );
                          },
                        ),

                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: 20),
              RichText(
                overflow: TextOverflow.clip,
                textAlign: TextAlign.end,
                // textDirection: TextDirection.rtl,
                softWrap: true,
                maxLines: 1,
                textScaleFactor: 1,
                text: TextSpan(
                  text: "What is the name of your circle? ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.APP_ICON_COLOR
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                        text: ' *', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold,)),
                  ],
                ),
              ),

              SizedBox(height: 10),
              _inputTextField(
                placeholder: "Circle Name",
                numberOfLines: 1,
                keyboardType: TextInputType.text,
                maxWords: null,
                icon: null,
                // maxWords: BlocProvider.of<CreateYutuTextContentBloc>(context).maxDescription,
                editingController: _subjectsTextFieldController,
                onChanged: (t){},
                stream: Stream.empty(),
                // onChanged: BlocProvider.of<CreateYutuTextContentBloc>(context).descriptionChanged,
                // stream: BlocProvider.of<CreateYutuTextContentBloc>(context).description
              ),
              SizedBox(height: 20),
              RichText(
                overflow: TextOverflow.clip,
                textAlign: TextAlign.end,
                // textDirection: TextDirection.rtl,
                softWrap: true,
                maxLines: 1,
                textScaleFactor: 1,
                text: TextSpan(
                  text: "What is this circle for? ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.APP_ICON_COLOR
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                        text: ' *', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold,)),
                  ],
                ),
              ),

              SizedBox(height: 10),
              _inputTextField(
                placeholder:  "Description",
                numberOfLines: 10,
                keyboardType: TextInputType.text,
                maxWords: 250,
                icon: null,
                // maxWords: BlocProvider.of<CreateYutuTextContentBloc>(context).maxDescription,
                editingController: _subjectsTextFieldController,
                onChanged: (t){},
                stream: Stream.empty(),
                // onChanged: BlocProvider.of<CreateYutuTextContentBloc>(context).descriptionChanged,
                // stream: BlocProvider.of<CreateYutuTextContentBloc>(context).description
              ),
              SizedBox(height: 20),
              RichText(
                overflow: TextOverflow.clip,
                textAlign: TextAlign.end,
                // textDirection: TextDirection.rtl,
                softWrap: true,
                maxLines: 1,
                textScaleFactor: 1,
                text: TextSpan(
                  text: "tags",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.APP_ICON_COLOR
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                        text: ' *', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold,)),
                  ],
                ),
              ),


              SizedBox(height: 10),
              TextFieldTags(
                textfieldTagsController: _controller,
                initialTags: const [

                ],
                textSeparators: const [' ', ','],
                letterCase: LetterCase.normal,
                validator: (String tag) {
                  if (tag == '') {
                    return 'No, please just no';
                  } else if (_controller.getTags != null   && _controller.getTags!.contains(tag)) {
                    return 'you already entered that';
                  }
                  return null;
                },
                inputfieldBuilder:  (context, tec, fn, error, onChanged, onSubmitted) {
                  return ((context, sc, tags, onTagDelete) {
                    return TextField(
                      controller: tec,
                      focusNode: fn,
                      decoration: InputDecoration(
                        isDense: true,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        // helperText: 'Enter Tags...',
                        helperStyle: const TextStyle(
                          color: Colors.grey,
                        ),
                        hintText: _controller.hasTags ? '' : "Enter tag...",
                        errorText: error,
                        prefixIconConstraints: BoxConstraints(maxWidth: _distanceToField * 0.74),
                        prefixIcon: tags.isNotEmpty
                            ? SingleChildScrollView(
                          controller: sc,
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: tags.map((String tag) {
                                return Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20.0),
                                    ),
                                    color: AppColors.APP_ICON_COLOR,
                                  ),
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 5.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      InkWell(
                                        child: Text(
                                          '#$tag',
                                          style: const TextStyle(
                                              color: Colors.white),
                                        ),
                                        onTap: () {
                                          //print("$tag selected");
                                        },
                                      ),
                                      const SizedBox(width: 4.0),
                                      InkWell(
                                        child: const Icon(
                                          Icons.cancel,
                                          size: 14.0,
                                          color: Colors.grey,
                                        ),
                                        onTap: () {
                                          onTagDelete(tag);
                                        },
                                      )
                                    ],
                                  ),
                                );
                              }).toList()),
                        )
                            : null,
                      ),
                      onChanged: onChanged,
                      onSubmitted: onSubmitted,
                    );
                  });
                },
              ),
              SizedBox(height: 20),
              Text(
                "All circles",
                textAlign: TextAlign.start,
                style: TextStyle(
                  // color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),

              SizedBox(height: 5),
              Text(
                "Circles you are a member of",
                textAlign: TextAlign.start,
                style: TextStyle(
                  // color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w200
                ),
              ),

              SizedBox(height: 12),

              _circleView(),
              _circleView(),
              _circleView(),
              _circleView(),
              _circleView(),
              _circleView(),
              _circleView(),
              _circleView(),
              _circleView(),
              _circleView(),
              _circleView(),
              _circleView(),
              _circleView(),


            ],
          ),
        ),
      ),
    );
  }

  Widget _circleView(){
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
            fontWeight: FontWeight.bold
        ),
      ),
      // style: ListTileStyle.drawer,
      // contentPadding: EdgeInsetsGeometry.infinity,
      subtitle:  Text(
        "Joined 10.01.2023 ",
        style: TextStyle(
          // color: Colors.white
        ),
      ),
      trailing: TextButton(
        onPressed: (){},
        child: IconButton(
          onPressed: (){},
          icon: Icon(Icons.star_border, color: Colors.grey,),
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
        var currentCount = (snap.data == null) ? 0 : Validation().getWordCount(snap.data!);
        if (snap.data != null) editingController.value = editingController.value.copyWith(text: snap.data);

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
          counterText: (maxWords != null) ? "${currentCount} / ${maxWords} " + "wordsLabel" : null,
          counterStyle: TextStyle(
            fontSize: AppSpacing.COUNTER_SIZE,
            fontFamily: 'Poppins',
            color: AppColors.PLACEHOLDER_TEXT,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSpacing.ZERO_BORDER_RADIUS)),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(AppSpacing.ZERO_BORDER_RADIUS)),
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
              borderRadius: BorderRadius.all(Radius.circular(AppSpacing.SMALL_BORDER_RADIUS)),
              borderSide: BorderSide(color: AppColors.INPUT_BORDER_ERROR),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(AppSpacing.SMALL_BORDER_RADIUS)),
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
