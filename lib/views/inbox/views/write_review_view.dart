import 'package:empty/widget/text/underline_text_button_widget.dart';
import 'package:flutter/material.dart';

import '../../../widget/input/text_area._widget.dart';
import '../../../widget/text/text_label_widget.dart';
import '../dialogs/feedback_dialog.dart';
import '../widget/rating_widget.dart';

class WriteReviewView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                          image:
                              AssetImage("assets/images/big_girl_guitar.png"),
                          height: 75,
                          width: 67,
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
                              fontWeight: FontWeight.bold, fontSize: 16.0),
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
                          style: TextStyle(fontSize: 14.0, color: Colors.grey),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              UnderlineTextButton(text: "Details")
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Let everyone know how your experience was.",
                style: TextStyle(color: Color(0xff737A82), fontSize: 16),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              TextLabelWidget(
                text: "Rate your experience",
                isRequired: true,
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Listing Descriptions",
                style: TextStyle(color: Color(0xff737A82), fontSize: 16),
              ),
              RatingWidget(note: 5)
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Communication",
                style: TextStyle(color: Color(0xff737A82), fontSize: 16),
              ),
              RatingWidget(note: 3)
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Speed & Efficiency",
                style: TextStyle(color: Color(0xff737A82), fontSize: 16),
              ),
              RatingWidget(note: 4)
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            children: [
              TextLabelWidget(
                text: "How was your overall experience?",
              ),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          TextAreaWidget(
            placeholder: "Tell us about this...",
            value:
                "Amy was an excellent guitar teacher. She was a great listener and was patient. I will be booking another lesson with her again!|",
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
                  padding:
                      EdgeInsets.symmetric(horizontal: 70.0, vertical: 15.0),
                  minimumSize: const Size(303, 40)),
              onPressed: () {
                Navigator.pop(context);
                showDialog(
                    context: context, builder: (context) => FeedbackDialog());
              },
              child: const Text(
                "Submit",
                style: TextStyle(fontSize: 17),
              ))
        ],
      ),
    );
  }
}
