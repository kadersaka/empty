import 'package:flutter/material.dart';

class ConnectionsResultItemForegroundWidget extends StatelessWidget {
  const ConnectionsResultItemForegroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        //color: Colors.blue,
        width: double.infinity,
        child: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                    image: AssetImage("assets/images/img_ellipse6.png"), 
                    height: 50),
                SizedBox(
                  width: 15.0,
                ),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mark Thompson",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15.0),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                     "Interest: Guitar",
                      //"Pharmacie de Garde: Oui",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 12.0, color: Colors.grey),
                    )
                  ],
                )),
                SizedBox(
                  width: 20,
                ),
              ],
            )
          ],
        ));
  }

}