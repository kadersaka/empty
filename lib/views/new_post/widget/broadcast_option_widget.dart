import 'package:flutter/material.dart';

class BroadcastOptionSwitcherWidget extends StatefulWidget {
  const BroadcastOptionSwitcherWidget({super.key});
  @override
  State<StatefulWidget> createState() {
    return _BroadcastOptionSwitcherWidgetState();
  }
}

class _BroadcastOptionSwitcherWidgetState
    extends State<BroadcastOptionSwitcherWidget> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Broadcast to whole university.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "*Reach a bigger audience when you broadcast!",
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
