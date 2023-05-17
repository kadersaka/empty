import 'package:flutter/material.dart';

class DefaultTextInputWidget extends StatelessWidget {
  final String placeholder;
  const DefaultTextInputWidget({super.key, required this.placeholder});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: 50,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              child: TextFormField(
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
