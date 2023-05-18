import 'package:flutter/material.dart';

class SearchResultItemLargeWidget extends StatelessWidget {
  const SearchResultItemLargeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(bottom: 25.0),
        //color: Colors.blue,
        child: const Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image(
                    image: AssetImage("assets/images/img_ellipse6.png"), 
                    height: 57),
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
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
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
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
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