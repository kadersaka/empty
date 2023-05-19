import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../../core/tools/print.tool.dart';

class FormSelectWidget extends StatefulWidget {
  const FormSelectWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _FormSelectWidgetState();
  }
}

class _FormSelectWidgetState extends State<FormSelectWidget> {
  @override
  Widget build(BuildContext context) {
    logToConsole("Re rendering TEXT INPUT");
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 50,
      decoration: BoxDecoration(border: Border.all(color: Color(0xffd9d9d9))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: DropdownButtonHideUnderline(
                child: DropdownButton2(
              hint: Text("Select"),
              items: ["Art", "Basketball"]
                  .map((e) => DropdownMenuItem(
                      value: e,
                      child: Row(
                        children: [Icon(Icons.padding)],
                      )))
                  .toList(),
              onChanged: (value) {},
            )),
          ),
          const SizedBox(
            width: 20.0,
          ),
        ],
      ),
    );
  }
}
