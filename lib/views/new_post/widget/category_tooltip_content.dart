import 'dart:ui';

import 'package:flutter/material.dart';

class CategoryTooltipContent extends StatelessWidget {
  const CategoryTooltipContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 220,
        height: 360,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          children: [
            Text(
              "Tools & Tips",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20.0,
            ),
            Image.asset(
              "assets/images/image_12.png",
              width: 40,
              height: 40,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Have something you think everyone should know?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white),
            ),
            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.check,
                  size: 20,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                    child: Text(
                  "Invite others and share your knowledge",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ))
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.check,
                  size: 20,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(
                    child: Text(
                  "Found something you can’t live without? Let us know!",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ))
              ],
            )
          ],
        ));
  }
}
