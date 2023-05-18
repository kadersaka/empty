import 'package:flutter/material.dart';

class TextAreaWidget extends StatelessWidget {
  final String placeholder;
  const TextAreaWidget({super.key, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 100,
      decoration: BoxDecoration(border: Border.all(color: Color(0xffd9d9d9))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: TextFormField(
            style: TextStyle(),
            maxLines: 20,
            decoration: InputDecoration(
              hintText: placeholder,
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
