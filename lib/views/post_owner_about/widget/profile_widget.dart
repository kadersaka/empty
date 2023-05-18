import 'package:empty/widget/text/underline_text_button_widget.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image(
                image: AssetImage("assets/images/img_ellipse6.png"),
                height: 60),
            SizedBox(
              width: 15.0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Meryl C.",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Posted 12. 03. 2023",
                  //"Pharmacie de Garde: Oui",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
                SizedBox(
                  height: 5,
                ),
                UnderlineTextButton(text: "View Profile")
              ],
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffE9EDF5),
                ),
            child: Text(
              "Connect",
              style: TextStyle(color: Colors.black, fontSize: 14.0, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}
