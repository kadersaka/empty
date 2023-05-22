import 'package:flutter/material.dart';

class SettingItemSimpleWidget extends StatelessWidget {
  final Icon icon;
  final String text;
  final Function? onTap;
  const SettingItemSimpleWidget(
      {super.key, required this.icon, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!();
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
        width: double.infinity,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Transform.rotate(
                        angle: 0,
                        child: icon,
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        text,
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Icon(Icons.chevron_right)
              ],
            )
          ],
        ),
      ),
    );
  }
}

//