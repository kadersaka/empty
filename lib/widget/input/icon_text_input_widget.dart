import 'package:empty/core/tools/print.tool.dart';
import 'package:flutter/material.dart';

class IconInputWidget extends StatefulWidget {
  final String placeholder;
  final IconData iconData;
  final Function? onTap;
  final String? value;
  final bool readOnly;
  const IconInputWidget(
      {super.key,
      required this.placeholder,
      required this.iconData,
      this.onTap,
      this.value,
      this.readOnly = false});

  @override
  State<StatefulWidget> createState() {
    return _IconInputWidgetState();
  }
}

class _IconInputWidgetState extends State<IconInputWidget> {
  late TextEditingController _inputTextController;

  @override
  void initState() {
    _inputTextController = TextEditingController(text: widget.value);
    super.initState();
  }

  @override
  void dispose() {
    _inputTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    logToConsole("Re rendering TEXT INPUT");
    logToConsole(widget.value);
    _inputTextController.text = widget.value ?? '';
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 50,
      decoration: BoxDecoration(border: Border.all(color: Color(0xffd9d9d9))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: TextFormField(
              controller: _inputTextController,
              readOnly: widget.readOnly,
              style: TextStyle(),
              onTap: () {
                if (widget.onTap != null) {
                  widget.onTap!();
                }
              },
              decoration: InputDecoration(
                  hintText: widget.placeholder,
                  isDense: true,
                  contentPadding: const EdgeInsets.only(bottom: 1.0),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Icon(
            widget.iconData,
            size: 24,
            color: Color(0xff737a82),
          )
        ],
      ),
    );
  }
}
