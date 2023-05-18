import 'package:flutter/material.dart';

class SearchResultItemWidget extends StatelessWidget {
  const SearchResultItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(
          0, //From the design this is equal to 20 but we have already set a padding of 20 on the container 
          6, 75, 6),
        //color: Colors.blue,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                    image: AssetImage("assets/images/img_ellipse6.png"), 
                    height: 40),
                const SizedBox(
                  width: 15.0,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Guitar",
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                     "Public Circle",
                      //"Pharmacie de Garde: Oui",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    )
                  ],
                )),
                const SizedBox(
                  width: 20,
                ),
              ],
            )
          ],
        ));
  }

}