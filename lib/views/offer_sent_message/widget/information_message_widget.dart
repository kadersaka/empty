import 'package:flutter/material.dart';

class InformationMessageWidget extends StatelessWidget {
  final String time;
  final List<String> texts;
  InformationMessageWidget(
      {super.key, required this.time, required this.texts});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Today $time",
                style: TextStyle(
                    color: Color(0xff737A82),
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 11.0,
            ),
            ...texts.map((e) => Text(e,
                style: TextStyle(
                    color: Color(0xff737A82),
                    fontSize: 14,
                    fontWeight: FontWeight.w500))).toList()
          ],
        )
      ],
    );
  }
}
