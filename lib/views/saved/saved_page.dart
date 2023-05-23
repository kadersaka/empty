import 'package:empty/widget/text/underline_text_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/container/page_container_widget.dart';
import 'widget/recent_saved_item_widget.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageContainerWidget(
        appBarTitle: "",
        hasPadding: false,
        child: SingleChildScrollView(
          child: Column(children: [
            Row(),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xffDDDDDD),
                          blurRadius: 6.0, // soften the shadow
                          spreadRadius: 2.0, //extend the shadow
                          offset: Offset(
                            0.0, // Move to right 5  horizontally
                            5.0, // Move to bottom 5 Vertically
                          ),
                        )
                      ],
                    ),
                    child: Center(
                      child: Container(
                        width: 110,
                        height: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          gradient: RadialGradient(
                            colors: [
                              Color.fromARGB(230, 238, 218, 217),
                              Color.fromARGB(146, 230, 135, 128),
                            ],
                            center: Alignment.center,
                            radius: 0.9,
                          ),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.white24,
                              blurRadius: 5,
                              offset: Offset(
                                -2.0, // Move to right 5  horizontally
                                -5.0, // Move to bottom 5 Vertically
                              ),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Image.asset(
                            "assets/images/heart.png",
                            width: 50,
                            height: 50,
                          ) /*Icon(
                          CupertinoIcons.heart_fill,
                          color: Colors.red,
                          size: 50,

                        )*/
                          ,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Saved",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  CupertinoIcons.check_mark_circled,
                                  size: 14.0,
                                  color: Colors.blue,
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image.asset(
                                "assets/images/4.png",
                                fit: BoxFit.cover,
                                width: 40,
                                height: 40,
                              ),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Text(
                              "200 Saves",
                              style: TextStyle(fontSize: 14.0),
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "About this circle",
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Icon(
                                  Icons.keyboard_arrow_up_outlined,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Icon(
                        Icons.more_vert_outlined,
                        size: 24,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Column(
                  children: [
                    //Most recent
                    SizedBox(
                      width: 30.0,
                    ),
                    Divider(height: 50.0),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  "Most Recent",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0),
                                ),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  "Last 24 Hours",
                                  style: TextStyle(
                                      color: Color(0xff737A82), fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                          UnderlineTextButton(text: "View All")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          RecentSavedItemWidget(
                            description: '23845 S. McCoy Street...',
                            image: 'assets/images/hands_together.jpg',
                            title: 'The Village',
                          ),
                          RecentSavedItemWidget(
                            description: '147900 Broadway St...',
                            image: 'assets/images/home_sweet_home.jpg',
                            title: 'The High-rise',
                          ),
                          RecentSavedItemWidget(
                            description: '23845 S. McCoy Street...',
                            image: 'assets/images/hands_together.jpg',
                            title: 'The Village',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  "Near You",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0),
                                ),
                                SizedBox(
                                  height: 2.0,
                                ),
                                Text(
                                  "10 Miles",
                                  style: TextStyle(
                                      color: Color(0xff737A82), fontSize: 12.0),
                                ),
                              ],
                            ),
                          ),
                          UnderlineTextButton(text: "View All")
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          RecentSavedItemWidget(
                            description: '23845 S. McCoy Street...',
                            image: 'assets/images/flower_.jpg',
                            title: 'The Village',
                          ),
                          RecentSavedItemWidget(
                            description: '147900 Broadway St...',
                            image: 'assets/images/yoga_woman.jpg',
                            title: 'The High-rise',
                          ),
                          RecentSavedItemWidget(
                            description: '23845 S. McCoy Street...',
                            image: 'assets/images/flower_.jpg',
                            title: 'The Village',
                          ),
                        ],
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 50.0,
            ),
          ]),
        ));
  }
}
