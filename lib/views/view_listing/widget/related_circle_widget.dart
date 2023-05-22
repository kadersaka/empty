import 'package:flutter/material.dart';

class RelatedCircleWidget extends StatelessWidget {
  const RelatedCircleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(67),
              child: Image.asset(
                "assets/images/group_band.png",
                width: 135,
                height: 135,
                fit: BoxFit.cover,
              )),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Campus Band",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: .0,
          ),
          Text(
            "24 members",
            style: TextStyle(fontSize: 14.0, color: Color(0xff737373)),
          ),
        ],
      ),
    );
  }
}
