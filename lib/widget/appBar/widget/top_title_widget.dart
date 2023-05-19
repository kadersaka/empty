import 'package:flutter/material.dart';

class TopTitleWidget extends StatelessWidget {
  final String title;
  final Function? onBack;
  final Color? color;

  const TopTitleWidget(
      {super.key,
      required this.title,
      required this.onBack,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            if (onBack == null) {
              Navigator.pop(context);
            } else {
              onBack!();
            }
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: color ?? Colors.black,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        Text(
          title,
          style: TextStyle(
              color: color ?? Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20.0),
        )
      ],
    );
  }
}
