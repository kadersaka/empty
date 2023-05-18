import 'package:empty/widget/text/underline_text_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/utils/image_constant.dart';

class ProfileSecondWidget extends StatelessWidget {
  const ProfileSecondWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            ImageConstant.imgKalvisualsqsd,
            fit: BoxFit.cover,
            width: 124,
            height: 124,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.place,
                  color: Colors.red,
                  size: 24,
                ),
                Expanded(
                    child: UnderlineTextButton(
                        text: "6th Ave. Bristol, England BS3 1TF"))
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  CupertinoIcons.calendar,
                  size: 24,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "18.01-24.01",
                  style: TextStyle(fontSize: 14.0),
                )
              ],
            ),
            
          ],
        ))
      ],
    );
  }
}
