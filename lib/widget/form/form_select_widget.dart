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
        padding: const EdgeInsets.all(0.0),
        height: 50,
        decoration: BoxDecoration(
            color: Colors.white, border: Border.all(color: Color(0xffd9d9d9))),
        child: DropdownButtonHideUnderline(
            child: DropdownButton2(
          isExpanded: true,
          iconStyleData: IconStyleData(
              icon: Icon(
            Icons.search,
            size: 24,
          )),
          hint: Text("Search"),
          items: [
            {"name": "Art", "asset": "assets/images/art.jpg"},
            {"name": "Basketball", "asset": "assets/images/basket.jpg"},
            {"name": "Clubbing", "asset": "assets/images/clubbing.jpg"},
            {"name": "Dance", "asset": "assets/images/dance.jpg"}
          ]
              .map((e) => DropdownMenuItem(
                  value: e["name"]!,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(11),
                        child: Image.asset(
                          e["asset"]!,
                          fit: BoxFit.cover,
                          width: 21,
                          height: 21,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        e["name"]!,
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff737A82)),
                      )
                    ],
                  )))
              .toList(),
          onChanged: (value) {},
        )));
    ;
  }
}
