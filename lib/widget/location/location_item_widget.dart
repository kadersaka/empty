import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationItemWidget extends StatefulWidget {
  final Function onTap;
  const LocationItemWidget({super.key, required this.onTap});

  @override
  State<StatefulWidget> createState() {
    return _LocationItemWidgetState();
  }
}

class _LocationItemWidgetState extends State<LocationItemWidget> {
  late bool isTapped;

  @override
  void initState() {
    isTapped = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = true;
          Future.delayed(Duration(seconds: 1), () {
            widget.onTap("3323 Seventh St. Bristol, England");
          });
        });
      },
      child: Container(
          padding: const EdgeInsets.fromLTRB(
              20, //TODO move this into a constant
              10,
              75,
              10),
          color: isTapped ? Color(0xffA6B4D7) : Colors.transparent,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Center(
                      child: Icon(
                        CupertinoIcons.map_pin,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "3323 Seventh St",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: isTapped ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Cristol, England",
                        //"Pharmacie de Garde: Oui",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: !isTapped ? Colors.grey : Colors.black),
                      )
                    ],
                  )),
                ],
              ),
            ],
          )),
    );
  }
}