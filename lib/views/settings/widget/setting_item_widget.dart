import 'package:flutter/material.dart';

class SettingItemWidget extends StatelessWidget {
  final Widget icon;
  final String text;
  final String small;
  final Function? onTap;
  const SettingItemWidget(
      {super.key,
      required this.icon,
      required this.text,
      required this.small,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                icon,
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  text,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  small,
                  style: TextStyle(fontSize: 10.0),
                ),
                Icon(Icons.chevron_right)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
