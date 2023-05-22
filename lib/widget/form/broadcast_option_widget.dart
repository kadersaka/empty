import 'package:flutter/material.dart';

class BroadcastOptionSwitcherWidget extends StatefulWidget {
  final String title;
  final String text;
  final Function? onChanged;
  final bool isOn;
  const BroadcastOptionSwitcherWidget({super.key, required this.title, required this.text, this.isOn=false, this.onChanged});
  @override
  State<StatefulWidget> createState() {
    return _BroadcastOptionSwitcherWidgetState();
  }
}

class _BroadcastOptionSwitcherWidgetState
    extends State<BroadcastOptionSwitcherWidget> {
  late bool light;

  @override
  void initState() {
    light = widget.isOn;
    super.initState();
  }

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
                widget.title,
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

                    if (widget.onChanged != null) {
                    widget.onChanged!(value);
                  }
                  });
                },
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.text,
                style: TextStyle(fontSize: 14.0),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
