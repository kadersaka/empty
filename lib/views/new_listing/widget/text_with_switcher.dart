import 'package:flutter/material.dart';

class TextWithSwitcherWidget extends StatefulWidget {
  final String text;
  final String subText;
  final bool bold;
  final double fontSize;
  final Function? onChanged;
  final bool isOn;
  const TextWithSwitcherWidget(
      {super.key,
      required this.text,
      this.bold = false,
      this.fontSize = 14.0,
      this.onChanged,
      this.isOn = false,
      required this.subText});

  @override
  State<StatefulWidget> createState() {
    return _TextWithSwitcherWidgetState();
  }
}

class _TextWithSwitcherWidgetState extends State<TextWithSwitcherWidget> {
  bool light = false;

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
              Text(widget.text,
                  style: TextStyle(
                      fontSize: widget.fontSize,
                      fontWeight:
                          widget.bold ? FontWeight.bold : FontWeight.normal)),
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
                  if (widget.onChanged != null) {
                    widget.onChanged!(value);
                  }
                },
              )
            ],
          ),
          Row(
            children: [
              Text(
                widget.subText,
                style: TextStyle(fontSize: 12.0),
              )
            ],
          )
        ],
      ),
    );
  }
}
