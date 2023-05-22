import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:empty/core/tools/print.tool.dart';
import 'package:flutter/material.dart';

class PriceFromInputWidget extends StatefulWidget {
  final String placeholder;
  final Function? onTap;
  final String? value;
  final bool readOnly;
  const PriceFromInputWidget(
      {super.key,
      required this.placeholder,
      this.onTap,
      this.value,
      this.readOnly = false});

  @override
  State<StatefulWidget> createState() {
    return _IconInputWidgetState();
  }
}

class _IconInputWidgetState extends State<PriceFromInputWidget> {
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
      padding: const EdgeInsets.all(10.0),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white, border: Border.all(color: Color(0xffd9d9d9))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "£",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: TextFormField(
              controller: _inputTextController,
              readOnly: widget.readOnly,
              style: TextStyle(fontWeight: FontWeight.bold),
              inputFormatters: [
                CurrencyTextInputFormatter(
                    locale: 'uk', decimalDigits: 2, symbol: ''
                    //symbol: '£',
                    ),
              ],
              keyboardType: TextInputType.number,
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
        ],
      ),
    );
  }
}
