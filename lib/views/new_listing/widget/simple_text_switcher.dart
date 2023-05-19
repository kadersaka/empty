import 'package:flutter/material.dart';

class SimpleTextSwitcherWidget extends StatefulWidget {
  final String text;
  final bool bold;
  final double fontSize;
  const SimpleTextSwitcherWidget(
      {super.key, required this.text, this.bold=false, this.fontSize=14.0});

  @override
  State<StatefulWidget> createState() {
    return _SimpleTextSwitcherWidgetState();
  }
}

class _SimpleTextSwitcherWidgetState extends State<SimpleTextSwitcherWidget> {
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
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
