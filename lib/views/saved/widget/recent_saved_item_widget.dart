import 'dart:ui';

import 'package:flutter/material.dart';

class RecentSavedItemWidget extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  const RecentSavedItemWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 10.0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
              width: 168,
              height: 168,
            ),
          ),
          Positioned(
              bottom: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(25.0),
                    bottomRight: Radius.circular(25.0)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: 2.0, sigmaY: 2.0, tileMode: TileMode.decal),
                  child: Container(
                      width: 168,
                      height: 45,
                      padding: EdgeInsets.fromLTRB(15.0, 5.0, 5.0, 5.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(168, 43, 48, 66),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25.0),
                            bottomRight: Radius.circular(25.0)),
                      ),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(height: 4.0,),
                              Text(
                                description,
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.white),
                              )
                            ],
                          )
                        ],
                      )),
                ),
              ))
        ],
      ),
    );
  }
}
