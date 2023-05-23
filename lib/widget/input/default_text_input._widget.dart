import 'package:flutter/material.dart';

class DefaultTextInputWidget extends StatelessWidget {
  final String placeholder;
  final Function? onTap;
  const DefaultTextInputWidget(
      {super.key, required this.placeholder, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 50,
      decoration: BoxDecoration(
          color: Colors.white, border: Border.all(color: Color(0xffd9d9d9))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: TextFormField(
            onTap: () {
              if (onTap != null) {
                onTap!();
              }
            },
            style: TextStyle(),
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
