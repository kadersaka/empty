import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MarketplaceItemWidget extends StatelessWidget {
  const MarketplaceItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 137,
      height: 270,
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                image: AssetImage('assets/images/big_girl_guitar.png'),
                height: 187,
                width: 136,
              )),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Guitar Lessons",
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
              Icon(CupertinoIcons.heart)
            ],
          ),
          Row(
            children: [
              Text(
                "Circle Name",
                style: TextStyle(fontSize: 14.0, color: Color(0xff737A82)),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "£30",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
