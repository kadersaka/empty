import 'dart:ui';

import 'package:flutter/material.dart';

class MarketplaceTooltipContent extends StatelessWidget {
  const MarketplaceTooltipContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 220, //TODO move dimension to a constant
        height: 360,
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: Column(
          children: [
            Text(
              "Marketplace",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20.0,
            ),
            Image.asset(
              "assets/images/flame-shelving-with-canopy.png",
              width: 35,
              height: 55,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Need some cash?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.white),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Let’s face it, who doesn’t?",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.white),
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
                  "Up-cycle by selling something you don’t need",
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
                  "List a service you provide",
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
                  "Make a trade ",
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ))
              ],
            )
          ],
        ));
  }
}
