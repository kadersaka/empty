import 'package:flutter/material.dart';

class RelatedListingWidget extends StatelessWidget {
  const RelatedListingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: EdgeInsets.only(right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                "assets/images/big_girl_guitar.png",
                width: 135,
                height: 187,
                fit: BoxFit.cover,
              )),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Electric Keyboard",
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: .0,
          ),
          Text(
            "Ashley L.",
            style: TextStyle(
              fontSize: 14.0,
            ),
          ),
          SizedBox(
            height: .0,
          ),
          RichText(
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              text: TextSpan(
                  text: "",
                  style: TextStyle(color: Color(0xff737A82)),
                  children: [
                    TextSpan(
                        text: "£9.99",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: " - Description Lorem ipsum dolor ...")
                  ]))
        ],
      ),
    );
  }
}
