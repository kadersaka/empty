import 'package:flutter/material.dart';

class RelatedListingWidget extends StatelessWidget {
  final String asset;
  final String title;
  final String author;
  const RelatedListingWidget({super.key, required this.asset, required this.title, required this.author});

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
                asset,
                width: 135,
                height: 187,
                fit: BoxFit.fitHeight,
              )),
          SizedBox(
            height: 20.0,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: .0,
          ),
          Text(
            author,
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
