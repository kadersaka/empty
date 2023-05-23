import 'dart:typed_data';

import 'package:empty/views/view_listing/views/make_offer_view.dart';
import 'package:empty/widget/text/underline_text_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../core/tools/google_marker.tools.dart';
import '../../widget/container/bottom_sheet_modal_container.dart';
import '../../widget/container/page_container_widget.dart';
import '../../widget/input/text_area._widget.dart';
import '../../widget/tag/tags_container_widget.dart';
import '../../widget/text/text_label_widget.dart';
import '../home/bloc/home_bloc.dart';
import 'widget/;usic_place_widget.dart';
import 'widget/marketplace_place_widget.dart';
import 'widget/related_circle_widget.dart';
import 'widget/related_listing_widget.dart';
import 'widget/user_place_widget.dart';

class ViewListingPage extends StatefulWidget {
  const ViewListingPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ViewListingPageState();
  }
}

class _ViewListingPageState extends State<ViewListingPage> {
  late Uint8List positionCustomMarker;
  final LatLng _center = const LatLng(45.521563, -122.677433);
  late List<Marker> markers;

  Future<dynamic> load() async {
    positionCustomMarker =
        await getBytesFromAssetFroMarker("assets/images/4.png", 32);
    setState(() {
      markers = [
        Marker(
            markerId: MarkerId("id"),
            position: _center,
            icon: BitmapDescriptor.fromBytes(positionCustomMarker),
            infoWindow: InfoWindow(title: "Postion", snippet: "Position"))
      ];
    });
  }

  @override
  initState() {
    load();
    markers = [];

    super.initState();
  }

  @override
  Widget build(BuildContext rootContext) {
    return PageContainerWidget(
        appBarTitle: "View Listing",
        hasPadding: false,
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.all(0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(
                                image: AssetImage('assets/images/4.png'),
                                height: 40,
                                width: 40,
                                fit: BoxFit.cover),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "Amy Choi",
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff0880A1),
                            shape: RoundedRectangleBorder(
                              // Change your radius here
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.0, vertical: 10.0),
                            minimumSize: const Size(100, 15)),
                        onPressed: () {
                          //
                        },
                        child: const Text(
                          "Message Seller",
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Image.asset(
                "assets/images/big_girl_guitar.png",
                height: 550,
              ),
              SizedBox(
                height: 30.0,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Guitar Lessons - 30 min",
                      style: TextStyle(
                          fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      CupertinoIcons.heart,
                      size: 30.0,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.clock,
                          size: 25.0,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          "Listed 2 weeks ago in Oxford, England",
                          style: TextStyle(
                              fontSize: 14.0, color: Color(0xff737A82)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.eye_fill,
                          size: 25.0,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          "19 YuTU Views",
                          style: TextStyle(
                              fontSize: 14.0, color: Color(0xff737A82)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.featured_play_list,
                          size: 25.0,
                        ),
                        SizedBox(width: 10.0),
                        Text(
                          "3 People Saved ",
                          style: TextStyle(
                              fontSize: 14.0, color: Color(0xff737A82)),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextLabelWidget(text: "Description"),
                    SizedBox(
                      height: 10.0,
                    ),
                    TextAreaWidget(
                      placeholder: "...",
                      value:
                          "Hi! I’m Amy and I have 4 years of guitar experience. I’m looking to share my love of the guitar by giving lessons. I’ll work with you to cater the lesson to your skill level.",
                      readOnly: true,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextLabelWidget(text: "Where to find this listing:"),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "Marketplace",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            MarketplacePlace(),
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          children: [
                            Text(
                              "Music",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            MusicPlace()
                          ],
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Column(
                          children: [
                            Text(
                              "Amy Choi",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            UserPlace()
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextLabelWidget(text: "Tags"),
                    SizedBox(
                      height: 10.0,
                    ),
                    TagsContainerWidget(
                      items: ["Music", "Lessons", "Guitar"],
                      onAddTap: () {},
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextLabelWidget(text: "Seller Information"),
                        UnderlineTextButton(text: "View Profile")
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    //Seller Information
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(30.0),
                                child: Image(
                                    image: AssetImage('assets/images/4.png'),
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover),
                              ),
                              SizedBox(
                                width: 20.0,
                              ),
                              Column(
                                children: [
                                  Text(
                                    "Amy Choi",
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: Color(0xffead04B),
                                        size: 24.0,
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        "4.5",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            color: Color(0xff737a82),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xffE9EDF5),
                            ),
                            child: Text(
                              "Connect",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    //Map
                    Container(
                        height: 100,
                        child: GoogleMap(
                          markers: markers.toSet(),
                          initialCameraPosition: CameraPosition(
                            target: _center,
                            zoom: 11.0,
                          ),
                        )),
                    SizedBox(
                      height: 20.0,
                    ),

                    //Related Cirlces start
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextLabelWidget(text: "Related Circles"),
                        UnderlineTextButton(text: "See All")
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),

              //Related circles
              Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      RelatedCircleWidget(
                        asset: 'assets/images/group_band.png',
                        subTitle: '24 members',
                        title: 'Campus Band',
                      ),
                      RelatedCircleWidget(
                        asset: 'assets/images/woman_singing.png',
                        subTitle: '19 members',
                        title: 'Live Mics',
                      ),
                      RelatedCircleWidget(
                        asset: 'assets/images/group_band.png',
                        subTitle: '24 members',
                        title: 'Campus Band',
                      ),
                      RelatedCircleWidget(
                        asset: 'assets/images/group_band.png',
                        subTitle: '24 members',
                        title: 'Campus Band',
                      ),
                    ]),
                  )),

              SizedBox(
                height: 50.0,
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextLabelWidget(text: "Related Listings"),
                            UnderlineTextButton(text: "See All")
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          RelatedListingWidget(
                            asset: "assets/images/big_girl_guitar.png",
                            author: 'Ashley L.',
                            title: '"Electric Keyboard"',
                          ),
                          RelatedListingWidget(
                            asset: "assets/images/man_singing.jpg",
                            author: 'Sumaiya A.',
                            title: 'Singing Lessons',
                          ),
                          RelatedListingWidget(
                            asset: "assets/images/big_girl_guitar.png",
                            author: 'Ashley L.',
                            title: '"Electric Keyboard"',
                          ),
                          RelatedListingWidget(
                            asset: "assets/images/big_girl_guitar.png",
                            author: 'Ashley L.',
                            title: '"Electric Keyboard"',
                          ),
                          RelatedListingWidget(
                            asset: "assets/images/big_girl_guitar.png",
                            author: 'Ashley L.',
                            title: '"Electric Keyboard"',
                          ),
                        ]),
                      )
                    ],
                  )),

              SizedBox(
                height: 50.0,
              ),
              Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("£15",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold)),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xff0880A1),
                              shape: RoundedRectangleBorder(
                                // Change your radius here
                                borderRadius: BorderRadius.circular(10),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30.0, vertical: 10.0),
                              minimumSize: const Size(100, 15)),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              elevation: 0,
                              backgroundColor: Colors.white,
                              isScrollControlled: true,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(15),
                                      topRight: Radius.circular(15))),
                              builder: (context) {
                                return BottomSheetModalContainer(
                                    title: "Make an Offer",
                                    titleSize: 24,
                                    child: BlocProvider.value(
                                      value: BlocProvider.of<HomeBloc>(
                                          rootContext),
                                      child: ViewListingMakeOfferView(),
                                    ));
                              },
                            );
                          },
                          child: const Text(
                            "Make Offer",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ))
            ],
          ),
        )));
  }
}
