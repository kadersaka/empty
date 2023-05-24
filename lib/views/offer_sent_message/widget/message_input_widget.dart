import 'package:empty/core/tools/print.tool.dart';
import 'package:flutter/material.dart';

class MessageInputWidget extends StatefulWidget {
  final String placeholder;
  final Function? onTap;
  final String? value;
  final bool readOnly;
  const MessageInputWidget(
      {super.key,
      required this.placeholder,
      this.onTap,
      this.value,
      this.readOnly = false});

  @override
  State<StatefulWidget> createState() {
    return _MessageInputWidgetState();
  }
}

class _MessageInputWidgetState extends State<MessageInputWidget> {
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
      decoration: BoxDecoration(
          color: Colors.white, border: Border.all(color: Color(0xffd9d9d9))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.photo_size_select_actual_outlined,
            size: 24,
            color: Colors.black,
          ),
          SizedBox(
            width: 10.0,
          ),
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
            Icons.send,
            size: 24,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
