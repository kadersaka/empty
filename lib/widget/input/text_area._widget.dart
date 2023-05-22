import 'package:flutter/material.dart';

class TextAreaWidget extends StatefulWidget {
  final String placeholder;
  final String? value;
  final bool readOnly;
  final int maxLines;
  const TextAreaWidget(
      {super.key,
      required this.placeholder,
      this.value,
      this.readOnly = false, this.maxLines=20});

  @override
  State<StatefulWidget> createState() {
    return _TextAreaWidgetState();
  }
}

class _TextAreaWidgetState extends State<TextAreaWidget> {
  late TextEditingController _inputController;

  @override
  initState() {
    _inputController = TextEditingController(text: widget.value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //TODO reviex this line in case the onChange is fired and the widget is going to render
    _inputController.text = _inputController.text.isNotEmpty
        ? _inputController.text
        : widget.value ?? "";
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white, border: Border.all(color: Color(0xffd9d9d9))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: TextFormField(
            controller: _inputController,
            readOnly: widget.readOnly,
            style: TextStyle(fontSize: 16.0),
            maxLines: widget.maxLines,
            decoration: InputDecoration(
              hintText: widget.placeholder,
              isDense: true,
              contentPadding: EdgeInsets.only(bottom: 1.0),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
            ),
          ))
        ],
      ),
    );
  }
}
