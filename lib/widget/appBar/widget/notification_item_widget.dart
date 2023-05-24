import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationItemWidget extends StatelessWidget {
  final bool hasNotification;
  final String username;
  final String profile;
  final String descriptionMessage;
  final bool descriptionMessageBold;
  final String time;
  const NotificationItemWidget(
      {super.key,
      this.hasNotification = false,
      required this.username,
      required this.profile,
      required this.descriptionMessage,
      required this.time,
      this.descriptionMessageBold = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image(
                    image: AssetImage(profile),
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover),
              ),
              hasNotification
                  ? Positioned(
                      // alignment: Alignment.topCenter,
                      top: 3,
                      right: 3,
                      // left: -5,
                      child: Icon(
                        Icons.circle,
                        color: Colors.red,
                        size: 11,
                      ),
                    )
                  : SizedBox(),
            ],
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
              username,
              textAlign: TextAlign.left,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
              softWrap: true,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      (descriptionMessage.length > 25
                          ? '${descriptionMessage.substring(0, 25)}...'
                          : descriptionMessage),
                      //"Pharmacie de Garde: Oui",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14.0,
                          color: descriptionMessageBold
                              ? Colors.black
                              : Colors.grey,
                          fontWeight: descriptionMessageBold
                              ? FontWeight.w400
                              : FontWeight.normal),
                    ),
                    Text(
                      " | $time",
                      //"Pharmacie de Garde: Oui",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  width: 30.0,
                ),
                Icon(
                  CupertinoIcons.camera,
                  size: 18,
                )
              ],
            )
          ],
        )),
      ],
    );
  }
}
