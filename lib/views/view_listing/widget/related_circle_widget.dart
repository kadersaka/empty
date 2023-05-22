import 'package:flutter/material.dart';

class RelatedCircleWidget extends StatelessWidget {
  final String asset;
  final String title;
  final String subTitle;
  const RelatedCircleWidget({super.key, required this.asset, required this.title, required this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(67),
              child: Image.asset(
                asset,
                width: 135,
                height: 135,
                fit: BoxFit.cover,
              )),
          SizedBox(
            height: 20.0,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: .0,
          ),
          Text(
            subTitle,
            style: TextStyle(fontSize: 14.0, color: Color(0xff737373)),
          ),
        ],
      ),
    );
  }
}
