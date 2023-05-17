import 'package:flutter/material.dart';

class SettingItemSwitcherWidget extends StatefulWidget {
  const SettingItemSwitcherWidget({super.key});
  @override
  State<StatefulWidget> createState() {
    return _SettingItemSwitcherWidgetState();
  }
}

class _SettingItemSwitcherWidgetState extends State<SettingItemSwitcherWidget> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              Transform.rotate(
                angle: 0,
                child: Icon(Icons.notifications_none_sharp),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                "Notifications",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Allow YuTU to send you notifications.",
                style: TextStyle(fontSize: 10.0),
              ),
              Switch(
                // This bool value toggles the switch.
                value: light,
                activeColor: Colors.white,
                activeTrackColor: Color(0xff5c71a8),
                inactiveTrackColor: Color(0xFFD9DFEC),

                onChanged: (bool value) {
                  // This is called when the user toggles the switch.
                  setState(() {
                    light = value;
                  });
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
